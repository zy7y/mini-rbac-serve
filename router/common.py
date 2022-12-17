from fastapi import APIRouter

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
