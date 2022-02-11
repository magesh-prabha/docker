FROM java:latest

VOLUME /docker_vol/

MAINTAINER Magesh Prabha <prabhabala100@gmail.com>

RUN apt-get install -y python

WORKDIR /docker_home
RUN curl https://www.exasol.com/support/secure/attachment/111497/EXAplus-7.0.0.tar.gz --output EXAplus-7.0.0.tar.gz
RUN tar -xzf EXAplus-7.0.0.tar.gz
ENV TEST=$TEST
