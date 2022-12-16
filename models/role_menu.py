from common.table import Table, fields

"""
角色菜单表
"""


class RoleMenu(Table):
    role = fields.ForeignKeyField(
        "models.Role", on_delete=fields.CASCADE
    )
    menu = fields.ForeignKeyField(
        "models.Menu", on_delete=fields.CASCADE
    )

    class Meta:
        table = "sys_role_menu"
