FROM python:3.7-alpine
MAINTAINER antoanish

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app


#The purpose of the below is to ensure that the application does not run using root account
RUN adduser -D user
USER user

