cd ./kafka_plain
./zookeeper-start.sh>./log/zookeeper.log&
sleep 3
./kafka-start.sh>./log/kafka.log&
cd ..
sleep 3
jobs

