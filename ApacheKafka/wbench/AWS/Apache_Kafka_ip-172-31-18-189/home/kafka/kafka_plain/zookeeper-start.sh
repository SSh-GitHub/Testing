#!/bin/bash
export _JAVA_OPTIONS=-Djava.security.auth.login.config=/home/kafka/kafka_plain/jaas_zookeeper_plain.conf
/home/kafka/kafka_plain/kafka_2.11-2.3.0/bin/zookeeper-server-start.sh /home/kafka/kafka_plain/kafka_2.11-2.3.0/config/zookeeper.properties

