set JAVA_HOME=D:\user\miti\dev\trunk\External\jdk\jdk-11\
set KAFKA_HOME=D:\kafka\

set CRNT_DIR=%CD%
set LOG_DIR=%CRNT_DIR%\logs
cd %KAFKA_HOME%
call .\bin\windows\kafka-console-producer.bat --producer.config %CRNT_DIR%\properties_producer_default.properties --broker-list localhost:9092 --topic SSh_Topic_\:01 
cd %CRNT_DIR%
