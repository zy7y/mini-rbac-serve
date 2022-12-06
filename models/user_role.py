from common.table import Table, fields

"""
用户角色表
"""


class UserRole(Table):
    user = fields.ForeignKeyField("models.User", on_delete=fields.CASCADE)
    role = fields.ForeignKeyField("models.Role", on_delete=fields.CASCADE)

    class Meta:
        table = "sys_user_role"
