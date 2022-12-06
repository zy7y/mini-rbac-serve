from common.table import Table, fields

"""
角色表
"""


class Role(Table):
    role_name = fields.CharField(max_length=10, index=True, description="角色名称")
    desc = fields.CharField(max_length=60, null=True, description="描述")

    class Meta:
        table = "sys_role"
