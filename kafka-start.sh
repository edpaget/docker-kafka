#!/bin/bash

echo `hostname` > /etc/hostname
echo "127.0.0.1 `hostname` localhost.localdomain localhost" > /etc/hosts
mv /opt/kafka_2.8.0-0.8.0-beta1/config/server.properties /opt/kafka_2.8.0-0.8.0-beta1/config/server.properties.old
sed "s/localhost/`echo $ZK_IP`/" /opt/kafka_2.8.0-0.8.0-beta1/config/server.properties.old > /opt/kafka_2.8.0-0.8.0-beta1/config/server.properties 
cat /opt/kafka_2.8.0-0.8.0-beta1/config/server.properties 
rm -rf /opt/kafka_2.8.0-0.8.0-beta1/config/*old*
/opt/kafka_2.8.0-0.8.0-beta1/bin/kafka-server-start.sh /opt/kafka_2.8.0-0.8.0-beta1/config/server.properties