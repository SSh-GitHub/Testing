call kafka-topics.bat --zookeeper localhost:2181 --create --partitions 1 --replication-factor 1 --topic Samples-book-json
call kafka-topics.bat --zookeeper localhost:2181 --create --partitions 1 --replication-factor 1 --topic Samples-DimCustomer2-csv
call kafka-topics.bat --zookeeper localhost:2181 --create --partitions 1 --replication-factor 1 --topic Samples-f-csv
call kafka-topics.bat --zookeeper localhost:2181 --create --partitions 1 --replication-factor 1 --topic Samples-json-mapping-m-xlsx
call kafka-topics.bat --zookeeper localhost:2181 --create --partitions 1 --replication-factor 1 --topic Samples-nation-impala-parquet
call kafka-topics.bat --zookeeper localhost:2181 --create --partitions 1 --replication-factor 1 --topic Samples-order-json
call kafka-topics.bat --zookeeper localhost:2181 --create --partitions 1 --replication-factor 1 --topic Samples-patron-json
call kafka-topics.bat --zookeeper localhost:2181 --create --partitions 1 --replication-factor 1 --topic Samples-tes2-avro
call kafka-topics.bat --zookeeper localhost:2181 --create --partitions 1 --replication-factor 1 --topic Samples-users-avro

call kafka-console-producer.bat --broker-list localhost:9092 --topic Samples-book-json              <"D:\user\Testing\MIMB-11015 Apache Kafka import bridge\Samples\Samples_book.json"
rem call kafka-console-producer.bat --broker-list localhost:9092 --topic Samples-DimCustomer2-csv       <"D:\user\Testing\MIMB-11015 Apache Kafka import bridge\Samples\Samples_DimCustomer2.csv"
call kafka-console-producer.bat --broker-list localhost:9092 --topic Samples-f-csv                  <"D:\user\Testing\MIMB-11015 Apache Kafka import bridge\Samples\Samples_f.csv"
call kafka-console-producer.bat --broker-list localhost:9092 --topic Samples-json-mapping-m-xlsx    <"D:\user\Testing\MIMB-11015 Apache Kafka import bridge\Samples\Samples_json_mapping_m.xlsx"
call kafka-console-producer.bat --broker-list localhost:9092 --topic Samples-nation-impala-parquet  <"D:\user\Testing\MIMB-11015 Apache Kafka import bridge\Samples\Samples_nation_impala.parquet"
call kafka-console-producer.bat --broker-list localhost:9092 --topic Samples-order-json             <"D:\user\Testing\MIMB-11015 Apache Kafka import bridge\Samples\Samples_order.json"
call kafka-console-producer.bat --broker-list localhost:9092 --topic Samples-patron-json            <"D:\user\Testing\MIMB-11015 Apache Kafka import bridge\Samples\Samples_patron.json"
call kafka-console-producer.bat --broker-list localhost:9092 --topic Samples-tes2-avro              <"D:\user\Testing\MIMB-11015 Apache Kafka import bridge\Samples\Samples_tes2.avro"
call kafka-console-producer.bat --broker-list localhost:9092 --topic Samples-users-avro             <"D:\user\Testing\MIMB-11015 Apache Kafka import bridge\Samples\Samples_users.avro"
