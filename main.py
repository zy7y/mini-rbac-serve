"""
pip install fastapi uvicorn -i https://pypi.douban.com/simple/
"""
from fastapi import FastAPI
from tortoise.contrib.fastapi import register_tortoise

from common.conf import TORTOISE_ORM, logger_db_client

app = FastAPI(title="mini-rbac")

register_tortoise(app, config=TORTOISE_ORM)


# 测试数据库连接
@app.get("/user")
async def get_users():
    from models.user import User
    return await User.all()


if __name__ == '__main__':
    import uvicorn

    uvicorn.run("__main__:app", reload=True)
