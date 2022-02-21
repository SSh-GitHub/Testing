set HADOOP_HOME=D:\app\apache\hadoop\3.3.0\hadoop-3.3.0\
set HADOOP_OPTIONAL_TOOLS=D:\app\apache\hadoop\3.3.0\hadoop-3.3.0\share\hadoop\tools\lib\
rem set HADOOP_CLASSPATH=D:\app\apache\hadoop\3.3.0\hadoop-3.3.0\share\hadoop\tools\lib\hadoop-azure-3.3.0.jar
rem set HADOOP_CLASSPATH=D:\app\apache\hadoop\3.3.0\hadoop-3.3.0\share\hadoop\tools\lib\hadoop-azure-3.3.0.jar;D:\app\apache\hadoop\3.3.0\hadoop-3.3.0\share\hadoop\tools\lib\wildfly-openssl-1.0.7.Final.jar
set HADOOP_CLASSPATH=D:\app\apache\hadoop\3.3.0\hadoop-3.3.0\share\hadoop\tools\lib\*
D:\app\apache\hadoop\3.3.0\hadoop-3.3.0\bin\hadoop ^
  jar cloudstore-1.0.jar  ^
  %*