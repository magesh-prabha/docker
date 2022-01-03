FROM python:latest

MAINTAINER Magesh Prabha <prabhabala100@gmail.com>

RUN apt-get -qq update
RUN apt-get install -y vim
RUN apt-get install -y rsync

RUN apt-get update && \
    apt-get install -y openjdk-11-jre-headless && \
    apt-get clean

WORKDIR /my_dbscripts
RUN curl https://www.exasol.com/support/secure/attachment/111497/EXAplus-7.0.0.tar.gz --output EXAplus-7.0.0.tar.gz
RUN tar -xzf EXAplus-7.0.0.tar.gz
