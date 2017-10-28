FROM python:2
MAINTAINER bcongdon

RUN apt-get update
RUN apt-get install cron -y

RUN pip install github-backup

ADD crontab /usr/src/crontab

ENV GITHUB_TOKEN CHANGE_ME

ENV GITHUB_USERNAME CHANGE_ME

CMD env > /tmp/.env && crontab /usr/src/crontab && cron -f
