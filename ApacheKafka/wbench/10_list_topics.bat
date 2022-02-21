set JAVA_HOME=D:\user\miti\dev\trunk\External\jdk\jdk-11\
set KAFKA_HOME=D:\kafka\

set CRNT_DIR=%CD%
set LOG_DIR=%CRNT_DIR%\logs
cd %KAFKA_HOME%
rem .\bin\windows\kafka-topics.bat --list --zookeeper localhost
.\bin\windows\kafka-topics.bat --list --zookeeper ec2-107-23-96-15.compute-1.amazonaws.com:2111
cd %CRNT_DIR%
