from common.table import Table, fields

"""用户表"""


class User(Table):
    username = fields.CharField(max_length=20, description="账号", unique=True, index=True)
    password = fields.CharField(max_length=20, description="密码")
    nickname = fields.CharField(max_length=20, description="昵称", index=True)

    class Meta:
        table = "sys_user"
