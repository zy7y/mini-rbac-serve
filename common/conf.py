# 数据库url
db_url = "mysql://root:123456@127.0.0.1:3306/mini-rbac"

TORTOISE_ORM = {
    # 连接信息
    "connections": {"default": db_url},
    "apps": {
        "models": {  # 这个models 表示应用名称作用就是你在使用到关联模型 {app}.{model} 这时候你的app 就叫models
            # model 信息
            # "models": ["models", "aerich.models"], # 把需要的模型导进一个module 直接使用module
            "models": [
                "models.user",
                "models.role",
                "models.user_role",
                "models.role_menu",
                "models.menu",
                "aerich.models",
            ],  # 把需要的模型导进一个module 直接使用module
            "default_connection": "default",
        },
    },
}

redis_url = "redis://localhost"

# tortoise orm logging
import logging
import sys

fmt = logging.Formatter(
    fmt="%(asctime)s - %(name)s:%(lineno)d - %(levelname)s - %(message)s",
    datefmt="%Y-%m-%d %H:%M:%S",
)
sh = logging.StreamHandler(sys.stdout)
sh.setLevel(logging.DEBUG)
sh.setFormatter(fmt)

# will print debug sql
logger_db_client = logging.getLogger("tortoise.db_client")
logger_db_client.setLevel(logging.DEBUG)
logger_db_client.addHandler(sh)
