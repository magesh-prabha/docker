FROM python:latest
RUN apt-get -qq update
RUN apt-get install -y vim
RUN apt-get install -y rsync
RUN apt-get install software-properties-common
RUN apt-get update

RUN add-apt-repository ppa:openjdk-r/ppa && \
    apt-get update && \
    apt-get install -y openjdk-7-jdk && \
    apt-get install -y ant && \
    apt-get clean;
    
RUN apt-get update && \
    apt-get install ca-certificates-java && \
    apt-get clean && \
    update-ca-certificates -f;

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME
    
WORKDIR /my_dbscripts
RUN curl https://www.exasol.com/support/secure/attachment/111497/EXAplus-7.0.0.tar.gz --output EXAplus-7.0.0.tar.gz
RUN tar -xzf EXAplus-7.0.0.tar.gz
