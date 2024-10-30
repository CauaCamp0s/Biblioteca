FROM python:3.12-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    default-libmysqlclient-dev \
    pkg-config 

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_APP=app

ARG DATABASE_URL
ENV DATABASE_URL=$DATABASE_URL

CMD ["flask", "db", "upgrade"]

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]
