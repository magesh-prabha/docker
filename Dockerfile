FROM java:latest

VOLUME /tmp/docker_vol/

MAINTAINER Magesh Prabha <prabhabala100@gmail.com>

RUN apt-get update -y
RUN apt-get install -y python
RUN apt-get install -y vim
RUN apt-get install -y rsync

WORKDIR /my_dbscripts
RUN curl https://www.exasol.com/support/secure/attachment/111497/EXAplus-7.0.0.tar.gz --output EXAplus-7.0.0.tar.gz
RUN tar -xzf EXAplus-7.0.0.tar.gz
