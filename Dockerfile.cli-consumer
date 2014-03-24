# DOCKER-VERSION 0.9.0
# VERSION 0.2

FROM ubuntu:12.04
MAINTAINER Edward Paget <ed@zooniverse.org>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y -q openjdk-7-jre-headless wget
RUN wget -q -O /opt/kafka_2.9.2-0.8.1.tgz http://mirror.symnds.com/software/Apache/kafka/0.8.1/kafka_2.9.2-0.8.1.tgz 
RUN tar -xzf /opt/kafka_2.9.2-0.8.1.tgz -C /opt

EXPOSE 9092

ENTRYPOINT ["./opt/kafka_2.9.2-0.8.1/bin/kafka-console-consumer.sh"]
