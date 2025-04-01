FROM python:3.11-slim-buster

ENV PYTHONUNBUFFERED=1
ENV PATH="root/.local/bin:$PATH"
ENV PYTHONPATH="/"

COPY ./requirements.txt /
COPY ./app /app

RUN apt-get update 
RUN apt-get install -y python3-pip 
RUN pip3 install --upgrade pip 
RUN pip3 install -r requirements.txt


WORKDIR /app

