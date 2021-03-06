FROM python:3.8-alpine

WORKDIR /src

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY src/ .

CMD [ "python", "./server.py" ]