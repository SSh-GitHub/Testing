set JAVA_HOME=D:\user\miti\dev\trunk\External\jdk\jdk-11\
set KAFKA_HOME=D:\kafka\

set CRNT_DIR=%CD%
set LOG_DIR=%CRNT_DIR%\logs
cd %KAFKA_HOME%
call .\bin\windows\kafka-console-consumer.bat --consumer.config %CRNT_DIR%\properties_consumer_ssl.properties --bootstrap-server SSh-Ws-01:9093 --topic SSh_Topic_01 --from-beginning --timeout-ms 1000 --group SSh_Group_09
cd %CRNT_DIR%