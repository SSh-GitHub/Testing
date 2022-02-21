#!/bin/bash
read -t 5 -p "Wait for 5 sec before schema-registry started..."
curl -X PUT -H "Content-Type:application/vnd.schemaregistry.v1+json"  --data {\"compatibility\":\"NONE\"}  http://schema-registry:8081/config && echo '\n'
#  A V R O
echo '{"af_1":1}' >msgs.tmp
echo '{"af_1":2}'>>msgs.tmp
echo '{"af_1":3}'>>msgs.tmp
kafka-avro-console-producer --bootstrap-server broker:9092 --topic SSh-test-avro-01 --property value.schema='{"type":"record","name":"myrecord","fields":[{"name":"af_1","type":"int"}]}'<msgs.tmp
echo '{"af_1":4,"af_2":1}' >msgs.tmp
echo '{"af_1":5,"af_2":2}'>>msgs.tmp
echo '{"af_1":6,"af_2":3}'>>msgs.tmp
kafka-avro-console-producer --bootstrap-server broker:9092 --topic SSh-test-avro-01 --property value.schema='{"type":"record","name":"myrecord","fields":[{"name":"af_1","type":"int"},{"name":"af_2","type":"int"}]}'<msgs.tmp
kafka-avro-console-consumer --bootstrap-server broker:9092 --topic SSh-test-avro-01 --offset earliest --partition 0 --timeout-ms 1000
read -t 5 -p AVRO
echo '{"jf_1":1}' >msgs.tmp
echo '{"jf_1":2}'>>msgs.tmp
echo '{"jf_1":3}'>>msgs.tmp
kafka-json-schema-console-producer --bootstrap-server broker:9092 --topic SSh-test-json-01 --property value.schema='{"type":"object","properties":{"jf_1":{"type":"integer"}}}'<msgs.tmp
echo '{"jf_1":4,"jf_2":1}' >msgs.tmp
echo '{"jf_1":5,"jf_2":2}'>>msgs.tmp
echo '{"jf_1":6,"jf_2":3}'>>msgs.tmp
kafka-json-schema-console-producer --bootstrap-server broker:9092 --topic SSh-test-json-01 --property value.schema='{"type":"object","properties":{"jf_1":{"type":"integer"},"jf_2":{"type":"integer"}}}'<msgs.tmp
kafka-json-schema-console-consumer --bootstrap-server broker:9092 --topic SSh-test-json-01 --offset earliest --partition 0 --timeout-ms 1000
# J S O N
# P R O T O B U F
# P R O T O B U F    A L L   T Y P E S
# P R O T O B U F    N E S T E D
# P R O T O B U F    R E P E A T E D
# P R O T O B U F    E N U M
# M I X
# Print list of topics:
