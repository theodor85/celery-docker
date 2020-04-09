FROM ubuntu:latest

RUN chsh -s /bin/bash
RUN apt-get update

# rabbitMQ
RUN apt-get install rabbitmq-server -y --fix-missing

# redis
RUN apt-get install -y redis

# python
RUN apt-get install -y python3.8 python3-dev python3-venv python3-pip

# requirements
RUN mkdir for_app
COPY ./requirements.txt /for_app/requirements.txt
RUN pip3 install --upgrade pip
RUN pip3 install -r /for_app/requirements.txt
