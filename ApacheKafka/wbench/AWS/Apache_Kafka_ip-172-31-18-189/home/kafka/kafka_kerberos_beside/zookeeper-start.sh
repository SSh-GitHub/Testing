#!/bin/bash
export _JAVA_OPTIONS="-Djava.net.preferIPv4Stack=true -Djava.security.krb5.conf=/home/kafka/kafka_kerberos_beside/krb5.conf -Djava.security.auth.login.config=/home/kafka/kafka_kerberos_beside/jaas_zookeeper_server_kerberos.conf"
/home/kafka/kafka_kerberos_beside/kafka_2.11-2.3.0/bin/zookeeper-server-start.sh /home/kafka/kafka_kerberos_beside/kafka_2.11-2.3.0/config/zookeeper.properties
