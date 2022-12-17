import json
from datetime import datetime, timedelta
from typing import Optional

from fastapi import Depends
from fastapi.exceptions import HTTPException
from fastapi.security import HTTPAuthorizationCredentials, HTTPBearer
from jose import JWTError, jwt
from passlib.context import CryptContext
from starlette.requests import Request

from common.utils import redis
from models import RoleMenu
from models.user import User
from models.user_role import UserRole

# pip install python-jose
# JWT
SECRET_KEY = "lLNiBWPGiEmCLLR9kRGidgLY7Ac1rpSWwfGzTJpTmCU"

ALGORITHM = "HS256"

ACCESS_TOKEN_EXPIRE_MINUTES = 60 * 24 * 7

pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")
bearer = HTTPBearer()


def verify_password(plain_password: str, hashed_password: str) -> bool:
    """
    验证明文密码 vs hash密码
    :param plain_password: 明文密码
    :param hashed_password: hash密码
    :return:
    """
    return pwd_context.verify(plain_password, hashed_password)


def get_password_hash(password: str) -> str:
    """
    加密明文
    :param password: 明文密码
    :return:
    """
    return pwd_context.hash(password)


def generate_token(username: str, expires_delta: Optional[timedelta] = None):
    """生成token"""
    to_encode = {"sub": username}.copy()
    if expires_delta:
        expire = datetime.utcnow() + expires_delta
    else:
        expire = datetime.utcnow() + timedelta(minutes=ACCESS_TOKEN_EXPIRE_MINUTES)
    to_encode.update(dict(exp=expire))
    encoded_jwt = jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)
    return encoded_jwt


async def check_token(security: HTTPAuthorizationCredentials = Depends(bearer)):
    """检查用户token"""
    token = security.credentials
    try:
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        username: str = payload.get("sub")
        return await User.get(username=username, status=1)
    except JWTError:
        raise HTTPException(detail="token认证失败", status_code=200)


async def check_permissions(request: Request, user=Depends(check_token)):
    """检查接口权限"""
    # 查询当前激活角色
    user_role = await UserRole.get_or_none(user=user, status=5, role__status__not=9)
    if user_role is None:
        raise HTTPException(detail="无激活角色", status_code=200)

    role_obj = await user_role.role.first()
    active_rid = role_obj.id

    # 白名单 登录用户信息， 登录用户菜单信息
    whitelist = [(f"/user/{user.id}", "GET"), (f"/role/{active_rid}", "GET")]

    if (request.url.path, request.method) in whitelist:
        return user

    api = request.url.path
    for k, v in request.path_params.items():
        api = api.replace(v, "{%s}" % k)

    cache_key = f"{user.username}_{active_rid}"
    # 1. 从redis中取
    result = await redis.get(cache_key)
    if result is None:
        role_menu = await RoleMenu.filter(role=role_obj, status__not=9).all()
        permissions = []
        for obj in role_menu:
            permissions.append(
                await obj.menu.filter(
                    status__not=9, api__not_isnull=True, method__not_isnull=True
                ).values("api", "method")
            )
        # 5分钟
        await redis.setex(cache_key, 300, json.dumps(permissions))
        result = json.dumps(permissions)
    if {"api": api, "method": request.method} not in json.loads(result):
        raise HTTPException(detail="无权限访问", status_code=200)
