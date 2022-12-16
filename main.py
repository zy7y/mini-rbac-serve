"""
pip install fastapi uvicorn -i https://pypi.douban.com/simple/
"""
from fastapi import FastAPI
from tortoise.contrib.fastapi import register_tortoise

from common.conf import TORTOISE_ORM, logger_db_client
from router.menu import router as menu_router
from router.role import router as role_router

app = FastAPI(title="mini-rbac")

register_tortoise(app, config=TORTOISE_ORM)

app.include_router(menu_router)
app.include_router(role_router)


if __name__ == "__main__":
    import uvicorn

    uvicorn.run("__main__:app", reload=True)
