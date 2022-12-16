from fastapi import APIRouter

from common.schemas import R
from common.utils import list2tree
from models.menu import Menu
from schemas.menu import MenuInfo, MenuSchema, MenuTree

router = APIRouter(prefix="/menu", tags=["菜单管理"])


@router.get("", summary="菜单🌲", response_model=R[MenuTree])
async def query_menu():
    """
    菜单列表-tree
    :return:
    """
    data = await Menu.all().values()
    return R.success(data=list2tree(data))


@router.post("", summary="创建菜单", response_model=R[MenuInfo])
async def add_menu(menu_schema: MenuSchema):
    """
    新增菜单
    :param menu_schema:
    :return:
    """
    obj = await Menu.create(**menu_schema.dict())
    return R.success(data=obj)


@router.put("/{id}", summary="更新菜单", response_model=R[MenuInfo])
async def edit_menu(id: int, menu_schema: MenuSchema):
    """
    更新菜单
    :param id:
    :param menu_schema:
    :return:
    """
    await Menu.filter(id=id).update(**menu_schema.dict())
    data = await Menu.get_or_none(id=id)
    return R.success(data=data)


@router.delete("/{id}", summary="删除菜单", response_model=R)
async def del_menu(id: int):
    """
    删除菜单
    :param id:
    :return:
    逻辑删除 修改状态
    """
    await Menu.filter(id=id).update(status=9)
    return R.success()
