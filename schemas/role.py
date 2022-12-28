from typing import List, Optional

from pydantic import Field
from tortoise.contrib.pydantic import pydantic_model_creator

from common.schemas import PageResult, Filter
from models.role import Role
from schemas.menu import MenuTree

RoleIn = pydantic_model_creator(Role, name="RoleIn", exclude_readonly=True)

RoleOut = pydantic_model_creator(Role, name="RoleOut")


class RoleSchema(RoleIn):
    menu_ids: List[int] = Field(..., description="菜单 id 列表")


# fix 角色 不存在时模型数据为空
RoleInfo = Optional[MenuTree]

RolePageList = PageResult[List[RoleOut]]


class RoleFilter(Filter):
    role_name__icontains: str = Field("", alias="name")
