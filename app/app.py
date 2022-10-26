"""This is the app module"""
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    """GET /"""
    return {"message": "Hello World"}

if __name__ == '__main__':
    app.run()
