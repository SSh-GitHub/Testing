#!/bin/bash
#  A V R O
kafka-topics --bootstrap-server broker:9092  --create --topic SSh-test-avro-01
#  J S O N
kafka-topics --bootstrap-server broker:9092  --create --topic SSh-test-json-01
#  P R O T O B U F
kafka-topics --bootstrap-server broker:9092  --create --topic SSh-test-protobuf-02
# P R O T O B U F    A L L   T Y P E S
kafka-topics --bootstrap-server broker:9092  --create --topic SSh-test-all-types-01
# P R O T O B U F    N E S T E D
kafka-topics --bootstrap-server broker:9092  --create --topic SSh-test-protobuf-nested-01
# P R O T O B U F    R E P E A T E D
kafka-topics --bootstrap-server broker:9092  --create --topic SSh-test-protobuf-repeated-01
# P R O T O B U F    E N U M
kafka-topics --bootstrap-server broker:9092  --create --topic SSh-test-protobuf-enum-01
# M I X
kafka-topics --bootstrap-server broker:9092  --create --topic SSh-test-mix-02
# Print list of topics:
kafka-topics --bootstrap-server broker:9092 --list|grep SSh