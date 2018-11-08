FROM python:3

ENV PYTHONUNBUFFERED 1

ADD ./requirements.txt /tmp/


RUN cd /tmp/ && pip3 install -r requirements.txt

ADD . /code/

WORKDIR /code

RUN python manage.py makemigrations

RUN python manage.py migrate