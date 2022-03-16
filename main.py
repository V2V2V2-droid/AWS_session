from fastapi import FastAPI
# create a fast api object

app = FastAPI()

# create an endpoint (route)
@app.get("/")
async  def root():
    return {"message":"Hello world; I wor !"}

# another endpoint with parameter
@app.get("/{name}")
async def hello(name: str):
    return {"message": f"Hello, {name} !"}
