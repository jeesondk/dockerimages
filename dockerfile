FROM alpine:latest

MAINTAINER Jeesondk, jeesondk@outlook.com

RUN apk update && \
apk add openjdk8-jre

RUN adduser -D -S -G root 101063000

RUN export JRE_HOME=/usr/lib/jvm/java-1.8-openjdk/jre && \
export PATH=$PATH:$JRE_HOME/bin

