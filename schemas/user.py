from typing import List, Optional

from pydantic import BaseModel, Field
from tortoise.contrib.pydantic import pydantic_model_creator

from common.schemas import Filter, PageResult
from models.user import User

UserIn = pydantic_model_creator(User, name="UserIn", exclude_readonly=True)

UserOut = pydantic_model_creator(User, name="UserOut", exclude=("password",))


class UserRoleStatus(BaseModel):
    rid: int
    # 关联表中的状态
    status: int


class UserSchema(UserIn):
    roles: List[UserRoleStatus]


class UserUpdate(BaseModel):
    nickname: str
    roles: List[UserRoleStatus]


# 用户 有的角色
class RoleStatus(UserRoleStatus):
    name: str


# 用户详细信息
class UserDetail(UserOut):
    roles: List[RoleStatus]


UserInfo = Optional[UserDetail]

UserPageResult = PageResult[List[UserOut]]


class ResetPass(BaseModel):
    new_password: str = Field(..., min_length=6, max_length=12)
    old_password: str = Field(..., min_length=6, max_length=12)


class UserFilter(Filter):
    username__icontains: str = Field("", alias="username")
    nickname__icontains: str = Field("", alias="nickname")
