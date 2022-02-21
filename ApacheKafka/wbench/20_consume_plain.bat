rem set JAVA_HOME=D:\user\miti\dev\trunk\External\jdk\jdk-11\
set JAVA_HOME=D:\IBM\InformationServer\jdk\
set KAFKA_HOME=D:\kafka\

set CRNT_DIR=%CD%
set LOG_DIR=%CRNT_DIR%\logs
cd %KAFKA_HOME%
set _JAVA_OPTIONS=-Djava.security.auth.login.config=%CRNT_DIR%\jaas_kafka_client_plain.conf
call .\bin\windows\kafka-console-consumer.bat --consumer.config %CRNT_DIR%\properties_consumer_plain.properties --bootstrap-server SSh-Ws-01:9092 --topic SSh_Topic_01  --from-beginning --timeout-ms 1000 --group SSh_Group_11
cd %CRNT_DIR%