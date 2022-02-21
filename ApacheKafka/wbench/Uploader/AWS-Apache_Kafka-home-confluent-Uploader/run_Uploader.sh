#/bin/bash
Uploader="/home/confluent/Uploader"
java -cp \
$Uploader/ApacheKafka.jar:\
$Uploader/org.codehaus.jackson/jackson-core-asl/1.8.8/jackson-core-asl-1.8.8.jar:\
$Uploader/org.codehaus.jackson/jackson-jaxrs/1.9.2/jackson-jaxrs-1.9.2.jar:\
$Uploader/org.codehaus.jackson/jackson-mapper-asl/1.8.8/jackson-mapper-asl-1.8.8.jar:\
$Uploader/org.codehaus.jackson/jackson-xc/1.9.2/jackson-xc-1.9.2.jar:\
$Uploader/com.fasterxml.jackson.core/jackson-annotations/2.9.0/jackson-annotations-2.9.0.jar:\
$Uploader/com.fasterxml.jackson.core/jackson-core/2.9.5/jackson-core-2.9.5.jar:\
$Uploader/com.fasterxml.jackson.core/jackson-databind/2.9.5/jackson-databind-2.9.5.jar:\
$Uploader/com.fasterxml.woodstox/woodstox-core/5.0.3/woodstox-core-5.0.3.jar:\
$Uploader/log4j/log4j/1.2.17/log4j-1.2.17.jar:\
$Uploader/org.apache.avro/avro/1.7.7/avro-1.7.7.jar:\
$Uploader/org.apache.zookeeper/zookeeper/3.4.13/zookeeper-3.4.13.jar:\
$Uploader/org.slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:\
$Uploader/org.slf4j/slf4j-log4j12/1.7.25/slf4j-log4j12-1.7.25.jar:\
$Uploader/org.apache.kafka/kafka_2.12/2.2.0/kafka_2.12-2.2.0.jar:\
$Uploader/org.apache.kafka/kafka-clients/2.2.0/kafka-clients-2.2.0.jar:\
$Uploader/org.apache.kafka/kafka-streams/2.2.0/kafka-streams-2.2.0.jar:\
$Uploader/io.confluent/kafka-avro-serializer/5.3.0/kafka-avro-serializer-5.3.0.jar:\
$Uploader/io.confluent/kafka-schema-registry-client/5.3.0/kafka-schema-registry-client-5.3.0.jar:\
$Uploader/io.confluent/common-config/5.3.0/common-config-5.3.0.jar:\
$Uploader/io.confluent/common-utils/5.3.0/common-utils-5.3.0.jar \
MITI.bridges.file.ApacheKafka.KafkaImportBridge\$Uploader \
 -bootstrap localhost:9092 \
 -schema_registry_url http://localhost:8081 \
 -init_with_schema_registry /home/confluent/Uploader/samples/init_with_schema_registry/ \
 -init /home/confluent/Uploader/samples/Samples_all_formats/ \
 -init_by_byte_arr_ser_with_byte_arr_val /home/confluent/Uploader/samples/init_no_schema_registry/ \
 -topic_prefix init_01_
