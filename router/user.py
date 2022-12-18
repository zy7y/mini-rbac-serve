import json
from typing import List

from fastapi import APIRouter, Depends
from fastapi.encoders import jsonable_encoder
from tortoise import connections
from tortoise.exceptions import OperationalError
from tortoise.transactions import atomic

from common.schemas import R
from common.security import check_token, get_password_hash, verify_password
from common.utils import redis
from models import Role, RoleMenu
from models.user import User
from models.user_role import UserRole
from schemas.user import (
    ResetPass,
    RoleStatus,
    UserDetail,
    UserInfo,
    UserPageResult,
    UserSchema,
    UserUpdate,
)

router = APIRouter(prefix="/user", tags=["用户管理"])


@router.get("", summary="用户列表", response_model=R[UserPageResult])
async def query_user(
    offset: int = 1, limit: int = 10, username: str = "", nickname: str = ""
):
    offset = (offset - 1) * limit
    _filter = User.filter(
        status=1, username__icontains=username, nickname__icontains=nickname
    )
    data = await _filter.offset(offset).limit(limit)
    total = await _filter.count()
    return R.success(data=UserPageResult(items=data, total=total))


@router.get("/{id}", summary="用户信息", response_model=R[UserInfo])
async def get_user(id: int):
    user_obj = await User.get_or_none(id=id, status=1)
    if user_obj is None:
        return R.fail()
    # 查用户对应的角色
    result = await UserRole.filter(user=user_obj, status__not=9).all()
    role_list: List[RoleStatus] = []
    for user_role in result:
        role_obj = await user_role.role.filter(status__not=9).all()
        role_list.append(
            RoleStatus(
                rid=role_obj.id, name=role_obj.role_name, status=user_role.status
            )
        )
    data = UserDetail(
        **jsonable_encoder(user_obj, exclude={"password"}), roles=role_list
    )
    return R.success(data=data)


@router.post("", summary="用户新增", response_model=R)
async def add_user(user: UserSchema):
    roles = user.roles
    has_user = await User.get_or_none(username=user.username)
    if has_user is not None:
        return R.fail()

    @atomic()
    async def add():
        # 1. 加密密码，创建用户
        user.password = get_password_hash(user.password)
        user_obj = await User.create(**user.dict())
        # 查询角色是否存在
        for info in roles:
            role = await Role.get(id=info.rid, status=1)
            # 2. 用户角色关联表写入数据
            await UserRole.create(user=user_obj, role=role, status=info.status)

    try:
        await add()
        return R.success()
    except OperationalError as e:
        return R.fail(e.__str__())


@router.put("/{id}", summary="用户更新", response_model=R)
async def edit_user(id: int, user: UserUpdate):
    roles = user.roles
    user_obj = await User.get_or_none(id=id, status=1)
    if user_obj is None:
        return R.fail()

    @atomic()
    async def update():
        await UserRole.filter(user=user_obj, status__not=9).update(status=9)
        # 查询角色是否存在
        for info in roles:
            role = await Role.get(id=info.rid, status=1)
            # 2. 用户角色关联表写入数据
            await UserRole.create(user=user_obj, role=role, status=info.status)

    try:
        await update()
        return R.success()
    except OperationalError as e:
        return R.fail(e.__str__())


@router.delete("/{id}", summary="删除用户", response_model=R)
async def del_user(id: int):
    result = await User.filter(id=id, status__not=9).update(status=9)
    if result == 0:
        return R.fail()
    return R.success()


@router.patch("/role/{id}", summary="切换角色", response_model=R)
async def change_role(id: int, user: User = Depends(check_token)):
    result = await UserRole.get_or_none(
        user=user, role__id=id, status__not=5, role__status__not=9
    )
    if result is None:
        return R.fail()
    await UserRole.filter(user=user, status=5).update(status=1)
    # tortoise.exceptions.OperationalError: (1052, "Column 'status' in field list is ambiguous")
    # row = await UserRole.filter(user=user, role__id=id).update(status=5)
    # row = await UserRole.filter(user=user, role=await Role.get(id=id)).update(status=5)
    db = connections.get("default")
    # TypeError: not all arguments converted during string formatting
    # sql = "update sys_user_role set status=(?) where user_id=(?) and role_id=(?)"
    sql = "update sys_user_role set status=(%s) where user_id=(%s) and role_id=(%s)"
    row = await db.execute_query_dict(sql, [5, user.id, id])
    if row == 0:
        return R.fail()

    # 更新redis
    role_menu = await RoleMenu.filter(role__id=id, status__not=9).all()
    permissions = []
    for obj in role_menu:
        permissions.append(
            await obj.menu.filter(
                status__not=9, api__not_isnull=True, method__not_isnull=True
            ).values("api", "method")
        )
    # 5分钟
    cache_key = f"{user.username}_{id}"
    await redis.setex(cache_key, 300, json.dumps(permissions))
    return R.success()


@router.patch("/reset", summary="重置密码", response_model=R)
async def reset_password(reset: ResetPass, user: User = Depends(check_token)):
    if verify_password(reset.old_password, user.password):
        row = await User.filter(id=user.id).update(
            password=get_password_hash(reset.new_password)
        )
        if row == 1:
            return R.success()
    return R.fail()
