from time import sleep
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def index():

	# simulate a long running task
	sleep(3)

	return {"Hello": "World"}
