from typing import List, Optional

from pydantic import BaseModel, Field
from tortoise.contrib.pydantic import pydantic_model_creator

from common.schemas import Filter, PageResult
from models.role import Role
from schemas.menu import MenuTree

RoleIn = pydantic_model_creator(Role, name="RoleIn", exclude_readonly=True)

RoleOut = pydantic_model_creator(Role, name="RoleOut")


class RoleSchema(RoleIn):
    menu_ids: List[int] = Field(..., description="菜单 id 列表")


class RoleInfo(BaseModel):
    menus: Optional[MenuTree]
    identifiers: Optional[List[str]]


RolePageList = PageResult[List[RoleOut]]


class RoleFilter(Filter):
    role_name__icontains: str = Field("", alias="name")
