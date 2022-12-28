"""
通用出入参数校验模型
"""
import dataclasses
from typing import Generic, Optional, TypeVar, List

from fastapi import Query
from pydantic.generics import GenericModel
from pydantic import BaseModel, Field

T = TypeVar("T")


class R(GenericModel, Generic[T]):
    code: int
    data: T
    msg: str

    @staticmethod
    def success(msg: str = "success", data: T = None) -> "R":
        return R(code=200, msg=msg, data=data)

    @staticmethod
    def fail(msg: str = "fail", data: T = None) -> "R":
        return R(code=400, msg=msg, data=data)


class Pagination(GenericModel, Generic[T]):
    items: Optional[T] = None
    total: int = 0

class PageResult(GenericModel, Generic[T]):
    items: Optional[T] = None
    total: int = 0


class Login(BaseModel):
    username: str
    password: str


class Token(BaseModel):
    id: int
    token: str


LoginResult = Optional[Token]


class Page(BaseModel):
    offset: int = 1
    limit: int = 10


class Filter(Page):
    status: int = 1
    ordering: str = '-created'
