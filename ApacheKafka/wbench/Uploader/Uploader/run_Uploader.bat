java -cp ^
.\ApacheKafka.jar;^
.\org.codehaus.jackson\jackson-core-asl\1.8.8\jackson-core-asl-1.8.8.jar;^
.\org.codehaus.jackson\jackson-jaxrs\1.9.2\jackson-jaxrs-1.9.2.jar;^
.\org.codehaus.jackson\jackson-mapper-asl\1.8.8\jackson-mapper-asl-1.8.8.jar;^
.\org.codehaus.jackson\jackson-xc\1.9.2\jackson-xc-1.9.2.jar;^
.\com.fasterxml.jackson.core\jackson-annotations\2.9.0\jackson-annotations-2.9.0.jar;^
.\com.fasterxml.jackson.core\jackson-core\2.9.5\jackson-core-2.9.5.jar;^
.\com.fasterxml.jackson.core\jackson-databind\2.9.5\jackson-databind-2.9.5.jar;^
.\com.fasterxml.woodstox\woodstox-core\5.0.3\woodstox-core-5.0.3.jar;^
.\log4j\log4j\1.2.17\log4j-1.2.17.jar;^
.\org.apache.avro\avro\1.7.7\avro-1.7.7.jar;^
.\org.apache.zookeeper\zookeeper\3.4.13\zookeeper-3.4.13.jar;^
.\org.slf4j\slf4j-api\1.7.25\slf4j-api-1.7.25.jar;^
.\org.slf4j\slf4j-log4j12\1.7.25\slf4j-log4j12-1.7.25.jar;^
.\org.apache.kafka\kafka_2.12\2.2.0\kafka_2.12-2.2.0.jar;^
.\org.apache.kafka\kafka-clients\2.2.0\kafka-clients-2.2.0.jar;^
.\org.apache.kafka\kafka-streams\2.2.0\kafka-streams-2.2.0.jar;^
.\io.confluent\kafka-avro-serializer\5.3.0\kafka-avro-serializer-5.3.0.jar;^
.\io.confluent\kafka-schema-registry-client\5.3.0\kafka-schema-registry-client-5.3.0.jar;^
.\io.confluent\common-config\5.3.0\common-config-5.3.0.jar;^
.\io.confluent\common-utils\5.3.0\common-utils-5.3.0.jar ^
MITI.bridges.file.ApacheKafka.KafkaImportBridge$Uploader ^
 -bootstrap 192.168.0.133:9092 ^
 -schema_registry_url http://192.168.0.133:8081 ^
 -init_with_schema_registry D:\user\Testing\ApacheKafka\wbench\Uploder\Uploader\samples\init_with_schema_registry\ ^
 -init D:\user\Testing\ApacheKafka\wbench\Uploder\Uploader\samples\Samples_all_formats\ ^
 -init_by_byte_arr_ser_with_byte_arr_val D:\user\Testing\ApacheKafka\wbench\Uploder\Uploader\samples\init_no_schema_registry\ ^
 -topic_prefix init_02_