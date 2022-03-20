This template allows you to quickly host your task on an autoscaling service such as Google Cloud Run. Follow [the quickstart in the Tasker docs](https://docs.tasker.sh/quickstart/) to get started.

## Deploy to GCP

[![Run on Google Cloud](https://deploy.cloud.run/button.svg)](https://deploy.cloud.run)

## Local testing

To start the task locally, run the following commands:

```
$ python3 -m venv venv

$ . ./venv/bin/activate

$ pip3 install -r requirements.txt

$ uvicorn task:app --reload
```

To call your task, run `curl localhost:8000` in another terminal.

`ctrl+c` will terminate the task.

## Testing the Docker image

We use Docker to package your code. To mimic how your task will run in production, run the following commands:

```
$ docker build -t python-template .

$ docker run -p 8000:8000 -e PORT=8000 python-template
```

To call your task, run `curl localhost:8000` in another terminal.
