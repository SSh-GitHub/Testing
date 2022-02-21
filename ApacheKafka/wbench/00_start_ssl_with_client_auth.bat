set JAVA_HOME=D:\user\miti\dev\trunk\External\jdk\jdk-11\
set KAFKA_HOME=D:\kafka\

set CRNT_DIR=%CD%
set LOG_DIR=%CRNT_DIR%\logs
cd %KAFKA_HOME%
rem start zookeeper server
start .\bin\windows\zookeeper-server-start.bat %CRNT_DIR%\properties_zookeeper_server_ssl_with_client_auth.properties 
rem start kafka server
start .\bin\windows\kafka-server-start.bat %CRNT_DIR%\properties_kafka_server_ssl_with_client_auth.properties 
cd %CRNT_DIR%

