wmic process where (commandline like "%%kafka.Kafka%%" and not name="wmic.exe") delete
wmic process where (commandline like "%%zookeeper%%" and not name="wmic.exe") delete
