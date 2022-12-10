from __future__ import annotations

from typing import List, Optional

from tortoise.contrib.pydantic import pydantic_model_creator

from models.menu import Menu

# 创建、更新模型
MenuSchema = pydantic_model_creator(Menu, name="MenuIn", exclude_readonly=True)

# 查询模型 单个
MenuInfo = pydantic_model_creator(Menu, name="MenuOut")


class MenuInfoTree(MenuInfo):
    children: Optional[List[MenuInfoTree]]


# 菜单树列表
MenuTree = List[MenuInfoTree]
