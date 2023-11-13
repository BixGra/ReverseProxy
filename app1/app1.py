from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return "This is app 1 root"


@app.get("/{url}")
async def get_method(url):
    return f"This is app 1 at {url}"
