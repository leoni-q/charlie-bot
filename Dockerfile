FROM python:3.9

EXPOSE 8545:8545

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt

ENV PYTHONPATH /usr/src/app

COPY bot /usr/src/app


