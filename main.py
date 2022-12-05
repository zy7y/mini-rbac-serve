"""
pip install fastapi uvicorn -i https://pypi.douban.com/simple/
"""
from fastapi import FastAPI

app = FastAPI(title="mini-rbac")


if __name__ == '__main__':
    import uvicorn
    uvicorn.run("__main__:app", reload=True)