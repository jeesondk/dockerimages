FROM ubuntu:xenial

MAINTAINER Jesper Jensen, jespje@danskebank.dk

RUN apt-get update

RUN apt-get install -y python-software-properties


RUN apt-get update && \
apt-get upgrade -y && \
apt-get install -y software-properties-common && \
add-apt-repository ppa:webupd8team/java -y && \
apt-get update && \
echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
apt-get install -y oracle-java8-installer && \
apt-get clean

RUN useradd -g root 1010630000

RUN echo 'JRE_HOME="/usr/lib/jvm/java-8-oracle"' >> /etc/environment &&\
export $JRE_HOME