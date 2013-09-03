# DOCKER-VERSION 0.6.1
# VERSION 0.1

FROM ubuntu
MAINTAINER Edward Paget <ed@zooniverse.org>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y -q openjdk-7-jre-headless curl 
RUN curl -o /opt/kafka_2.8.0-0.8.0-beta1.tgz https://dist.apache.org/repos/dist/release/kafka/kafka_2.8.0-0.8.0-beta1.tgz 
RUN tar -xzf /opt/kafka_2.8.0-0.8.0-beta1.tgz -C /opt/
RUN curl -o /usr/local/bin/kafka-start.sh http://ubret.s3.amazonaws.com/kafka-start.sh
RUN chmod +x /usr/local/bin/kafka-start.sh

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64

EXPOSE 9092