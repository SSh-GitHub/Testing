set JAVA_HOME=D:\user\miti\dev\trunk\External\jdk\jdk-11\
set KAFKA_HOME=D:\kafka\

set CRNT_DIR=%CD%\..\..\
set LOG_DIR=%CRNT_DIR%\logs
cd %KAFKA_HOME%
rem call .\bin\windows\kafka-console-consumer.bat --consumer.config %CRNT_DIR%\properties_consumer_default.properties --bootstrap-server sshwin7x64:9092 --from-beginning --timeout-ms 1000 --group SSh_Group_0 --topic 01_mix_formats
call .\bin\windows\kafka-console-consumer.bat --consumer.config %CRNT_DIR%\properties_consumer_default.properties --bootstrap-server sshwin7x64:9092 --from-beginning --timeout-ms 1000 --topic 01_mix_formats
cd %CRNT_DIR%