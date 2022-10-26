"""This is the app module"""
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    """GET /"""
    return {"message": "Goodbye and thank you Softcon PH 20222!"}

if __name__ == '__main__':
    app.run()
