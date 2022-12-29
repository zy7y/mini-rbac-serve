from fastapi import APIRouter, Depends
from tortoise.exceptions import OperationalError
from tortoise.transactions import in_transaction

from common.dbhelper import use_pagination
from common.schemas import R
from common.utils import list2tree
from models.menu import Menu
from models.role import Role
from models.role_menu import RoleMenu
from schemas.role import RoleFilter, RoleInfo, RolePageList, RoleSchema

router = APIRouter(prefix="/role", tags=["角色管理"])


@router.post("", summary="新增角色", response_model=R)
async def add_role(role: RoleSchema):
    # 1.拿到角色选择的菜单id
    mid_list = role.menu_ids
    del role.menu_ids

    # 2. 创建角色
    try:
        # 事务如果出错回滚
        async with in_transaction():
            # 1. 创建角色
            role_obj = await Role.create(**role.dict())
            # 2. 校验菜单是否存在 并写入关联表
            for mid in mid_list:
                menu = await Menu.get(id=mid, status=1)
                await RoleMenu.create(role=role_obj, menu=menu)
        return R.success()
    except OperationalError as e:
        return R.fail(msg=e.__str__())


@router.put("/{id}", summary="编辑角色", response_model=R)
async def edit_role(id: int, role: RoleSchema):
    mid_list = role.menu_ids
    del role.menu_ids

    try:
        # 事务如果出错回滚
        async with in_transaction():
            # 1. 更新角色
            result = await Role.filter(id=id).update(**role.dict())
            if result == 0:
                return R.fail()
            # 1.1 删除关联表的菜单数据
            await RoleMenu.filter(role_id=id).update(status=9)
            # 2. 校验菜单是否存在 并写入关联表
            for mid in mid_list:
                menu = await Menu.get(id=mid, status=1)
                # 可以通过 关联字段_id的形式传 关联表的主键
                await RoleMenu.create(role_id=id, menu=menu)
        return R.success()
    except OperationalError as e:
        return R.fail(msg=e.__str__())


@router.get("", summary="角色列表", response_model=R[RolePageList])
async def query_role(query: RoleFilter = Depends()):
    data = await use_pagination(query, Role)
    return R.success(data=data)


@router.get("/{id}", summary="角色信息（权限）", response_model=R[RoleInfo])
async def get_role(id: int):
    role = await Role.get_or_none(id=id, status__not=9)
    if role is None:
        return R.fail()
    # 查关联表菜单信息, 过滤菜单表的状态
    data = await RoleMenu.filter(role=role, status__not=9, menu__status=1).all()

    menus = [await item.menu.all().values() for item in data]
    identifiers = [
        menu["identifier"] for menu in menus if menu["identifier"] is not None
    ]
    return R.success(data=RoleInfo(menus=list2tree(menus), identifiers=identifiers))


@router.delete("/{id}", summary="删除角色", response_model=R)
async def del_role(id: int):
    row = await Role.filter(id=id, status__not=9).update(status=9)
    if row:
        return R.success()
    return R.fail()
