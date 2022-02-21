set JAVA_HOME=D:\user\miti\dev\trunk\External\jdk\jdk-11\
set KAFKA_HOME=D:\kafka\

set CRNT_DIR=%CD%
set LOG_DIR=%CRNT_DIR%\logs
rem del /S /Q data
cd %KAFKA_HOME%
set _JAVA_OPTIONS=-Djava.security.auth.login.config=%CRNT_DIR%\jaas_kafka_client_plain.conf
call .\bin\windows\kafka-console-producer.bat --producer.config %CRNT_DIR%\properties_producer_plain.properties --broker-list SSh-Ws-01:9092 --topic SSh_Topic_01 
cd %CRNT_DIR%
