FROM python:3.10

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./task.py /code/task.py

ENV PORT 8080
CMD exec uvicorn task:app --host 0.0.0.0 --port $PORT
