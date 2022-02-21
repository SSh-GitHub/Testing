rem  --loglevel TRACE ^
rem set CLASSPATH=%HADOOP_CLASSPATH%;%CLASSPATH%;D:\app\apache\hadoop\3.2.1\hadoop-3.2.1\bin\hadoop-azure-3.2.1.jar
rem set HADOOP_OPTIONAL_TOOLS="hadoop-azure,hadoop-azure-datalake"
rem set HADOOP_TOOLS_HOME=D:\app\apache\hadoop\3.2.1\hadoop-3.2.1\share\hadoop\tools\
rem set HADOOP_TOOLS_LIB_JARS_DIR=\lib\
call D:\app\apache\hadoop\3.2.1\hadoop-3.2.1\bin\hdfs.cmd  ^
  --config "D:\user\Testing\ApacheHDFS\wbench\etc\simple"\ ^
  dfs -fs wasbs://cont-03-continer@sshblobhierarchyon.blob.core.windows.net -ls /
