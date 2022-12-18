"""
pip install fastapi uvicorn -i https://pypi.douban.com/simple/
"""
from fastapi import Depends, FastAPI
from fastapi.exceptions import HTTPException, RequestValidationError
from loguru import logger
from starlette.middleware.cors import CORSMiddleware
from starlette.requests import Request
from starlette.responses import JSONResponse
from tortoise.contrib.fastapi import register_tortoise

from common.conf import TORTOISE_ORM, logger_db_client
from common.schemas import R
from common.security import check_permissions
from router.common import router as common_router
from router.menu import router as menu_router
from router.role import router as role_router
from router.user import router as user_router

app = FastAPI(title="mini-rbac")


# 异常处理


@app.exception_handler(RequestValidationError)
async def validation_exception_handler(request, exc):
    return JSONResponse(content=R.fail(str(exc)).dict())


@app.exception_handler(HTTPException)
async def http_exception(request, exc):
    return JSONResponse(content=R.fail(exc.detail).dict())


# 中间件
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],  # 一个允许跨域请求的 HTTP 方法列表
    allow_headers=["*"],  # 一个允许跨域请求的 HTTP 请求头列表
)


@app.middleware("http")
async def visit_log(request: Request, call_next):
    logger.info(
        f"Client: {request.client} Method: {request.method}  "
        f"Path: {request.url} Headers: {request.headers}"
    )
    # await request body https://github.com/tiangolo/fastapi/issues/394
    response = await call_next(request)
    return response


register_tortoise(app, config=TORTOISE_ORM)

app.include_router(menu_router, dependencies=[Depends(check_permissions)])
app.include_router(role_router, dependencies=[Depends(check_permissions)])
app.include_router(user_router, dependencies=[Depends(check_permissions)])
app.include_router(common_router)

if __name__ == "__main__":
    import uvicorn

    for router in app.routes:
        logger.debug(router.__dict__)

    uvicorn.run("__main__:app", reload=True)
