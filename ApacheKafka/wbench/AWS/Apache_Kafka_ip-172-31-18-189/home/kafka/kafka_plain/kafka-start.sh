#!/bin/bash
export _JAVA_OPTIONS=-Djava.security.auth.login.config=/home/kafka/kafka_plain/jaas_kafka_plain.conf
/home/kafka/kafka_plain/kafka_2.11-2.3.0/bin/kafka-server-start.sh /home/kafka/kafka_plain/kafka_2.11-2.3.0/config/server.properties
