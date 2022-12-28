from typing import Set, Type

from fastapi import HTTPException
from tortoise.exceptions import FieldError
from tortoise.models import MODEL

from common.schemas import Filter, PageResult


async def use_pagination(filters: Filter, model: Type[MODEL], exclude: Set[str] = None):
    """
    直接使用的分页查询
    :param exclude: 过滤条件从filters模型中排除哪些字段
    :param filters: 分页+查询条件的Pydantic模型
    :param model: 数据表模型
    :return: PageResult 总数 和数据列表
    """
    # 1. 排除分页、排序字段，得到一个过滤条件的字典
    if exclude is None:
        exclude = {"offset", "limit", "ordering"}

    _filters = filters.dict(exclude=exclude)
    # 2. 计算分页起
    offset = (filters.offset - 1) * filters.limit
    # 3. 构建查询 queryset
    try:
        objs = model.filter(**_filters).order_by(filters.ordering)
    except FieldError as e:
        raise HTTPException(detail=e.__str__(), status_code=400)
    # 4. 执行分页查询
    data = await objs.offset(offset).limit(filters.limit)
    # 5. 执行统计查询
    total = await objs.count()
    return PageResult(items=data, total=total)
