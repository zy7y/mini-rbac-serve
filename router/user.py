from typing import List

from fastapi import APIRouter
from fastapi.encoders import jsonable_encoder
from tortoise.exceptions import OperationalError
from tortoise.transactions import atomic

from common.schemas import R
from common.utils import get_password_hash
from models import Role
from models.user import User
from models.user_role import UserRole
from schemas.user import (RoleStatus, UserDetail, UserInfo, UserPageResult,
                          UserSchema, UserUpdate)

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
