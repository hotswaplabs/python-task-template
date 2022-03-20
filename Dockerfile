FROM python:3.10

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./task.py /code/task.py

CMD ["uvicorn", "task:app", "--host", "0.0.0.0", "--port", "80"]
