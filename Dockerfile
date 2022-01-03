FROM python:latest
RUN apt-get -qq update
RUN apt-get install -y vim
RUN apt-get install -y rsync
