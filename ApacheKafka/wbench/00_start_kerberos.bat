set JAVA_HOME =D:\user\miti\dev\trunk\External\jdk\jdk-11\
set KAFKA_HOME=D:\kafka\

set CRNT_DIR=%CD%
set LOG_DIR=%CRNT_DIR%\logs
cd %KAFKA_HOME%
rem start zookeeper server
set _JAVA_OPTIONS=-Djava.security.krb5.conf=%CRNT_DIR%\krb5.ini -Djava.security.auth.login.config=%CRNT_DIR%\jaas_zookeeper_server_kerberos.conf 
start .\bin\windows\zookeeper-server-start.bat %CRNT_DIR%\properties_zookeeper_server_kerberos.properties 
rem pause
rem start kafka server
set _JAVA_OPTIONS=-Djava.security.krb5.conf=%CRNT_DIR%\krb5.ini -Djava.security.auth.login.config=%CRNT_DIR%\jaas_kafka_server_kerberos.conf  
start .\bin\windows\kafka-server-start.bat %CRNT_DIR%\properties_kafka_server_kerberos.properties 
cd %CRNT_DIR%

