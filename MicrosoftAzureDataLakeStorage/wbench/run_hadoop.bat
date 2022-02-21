set HADOOP_HOME=D:\app\apache\hadoop\3.3.0\hadoop-3.3.0\
set HADOOP_CLASSPATH=D:\app\apache\hadoop\3.3.0\hadoop-3.3.0\share\hadoop\tools\lib\*

rem set HADOOP_SHELL_SCRIPT_DEBUG=true
rem set HADOOP_OPTIONAL_TOOLS=D:\app\apache\hadoop\3.3.0\hadoop-3.3.0\share\hadoop\tools\lib\
rem set HADOOP_CLASSPATH=D:\app\apache\hadoop\3.3.0\hadoop-3.3.0\share\hadoop\tools\lib\hadoop-azure-3.3.0.jar

rem D:\app\apache\hadoop\3.3.0\hadoop-3.3.0\bin\hdfs ^
rem dfs -fs hdfs://ip-172-31-28-135.ec2.internal:8120 %*

rem   -Dfs.azure.ssl.channel.mode=Default_JSSE ^

D:\app\apache\hadoop\3.3.0\hadoop-3.3.0\bin\hadoop ^
  fs ^
  -Dfs.azure.ssl.channel.mode=Default_JSSE ^
  -Dfs.azure.account.oauth.provider.type=org.apache.hadoop.fs.azurebfs.oauth2.MsiTokenProvider ^
  -Dfs.azure.account.auth.type=OAuth ^
  -Dfs.azure.account.oauth2.msi.tenant=4d33abfb-7bd8-40ba-bc97-5690aaa61040 ^
  -Dfs.azure.account.oauth2.client.id=ba8f6a15-3d6e-4fbf-a171-2e36a97c3501 ^
  -fs abfs://ssh-test-fs@sshadlsgen2.dfs.core.windows.net/ ^
  -ls /
