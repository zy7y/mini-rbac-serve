import asyncio
import random

from fastapi import APIRouter
from starlette.exceptions import WebSocketException
from starlette.websockets import WebSocket

from common.schemas import Login, LoginResult, R, Token
from common.security import generate_token, verify_password
from models.user import User

router = APIRouter(prefix="", tags=["公共"])


@router.post("/login", summary="登录", response_model=R[LoginResult])
async def login(data: Login):
    user_obj = await User.get_or_none(username=data.username)
    if user_obj is None:
        return R.fail()
    if verify_password(data.password, user_obj.password):
        # 1.加密token
        data = Token(id=user_obj.id, token=generate_token(data.username))
        return R.success(data=data)
    return R.fail()


@router.websocket("/ws", name="系统信息")
async def get_system_info(ws: WebSocket):
    await ws.accept()
    try:
        while True:
            data = {
                "usage": {
                    "cpu": f"{random.random() * 100: .2}",
                    "memory": f"{random.random() * 100: .2}",
                    "disk": f"{random.random() * 100: .2}",
                },
                "performance": {
                    "rps": f"{random.random() * random.randint(1, 50): .2}",
                    "time": f"{random.random() * random.randint(1, 50): .2}",
                    "user": f"{random.randint(1, 50)}",
                },
            }
            await asyncio.sleep(1)
            await ws.send_json(data)
    except WebSocketException:
        await ws.close()
