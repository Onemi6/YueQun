FROM python:3
LABEL MAINTAINER=clarkzjw<hello@jinwei.me>

ENV TZ Asia/Shanghai

RUN pip install --upgrade pipenv

ADD Pipfile.lock /yqbot/Pipfile.lock

ADD Pipfile /yqbot/Pipfile

WORKDIR /yqbot

RUN pipenv install --system --deploy

ADD . /yqbot
