"""This is the app module"""
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    """GET /"""
    return {"message": "Hello Softcon PH 2022!"}

if __name__ == '__main__':
    app.run()
