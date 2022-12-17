"""
pip install fastapi uvicorn -i https://pypi.douban.com/simple/
"""
from fastapi import Depends, FastAPI
from fastapi.exceptions import HTTPException, RequestValidationError
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


register_tortoise(app, config=TORTOISE_ORM)

app.include_router(menu_router, dependencies=[Depends(check_permissions)])
app.include_router(role_router, dependencies=[Depends(check_permissions)])
app.include_router(user_router, dependencies=[Depends(check_permissions)])
app.include_router(common_router)

if __name__ == "__main__":
    import uvicorn

    uvicorn.run("__main__:app", reload=True)
