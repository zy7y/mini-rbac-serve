from typing import List

from pydantic import Field
from tortoise.contrib.pydantic import pydantic_model_creator

from common.schemas import PageResult
from models import Role

RoleIn = pydantic_model_creator(Role, name="RoleIn", exclude_readonly=True)

RoleOut = pydantic_model_creator(Role, name="RoleOut")


class RoleSchema(RoleIn):
    menu_ids: List[int] = Field(..., description="菜单 id 列表")


RolePageList = PageResult[List[RoleOut]]
