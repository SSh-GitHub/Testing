#!/usr/bin/env bash
export JAVA_HOME=/usr/
export HADOOP_HOME=/home/azureuser/hadoop/hadoop-3.3.0
export HADOOP_CLASSPATH=/home/azureuser/hadoop/hadoop-3.3.0/share/hadoop/tools/lib/*

<<!!!
  Run ls using access key authentification
!!!
/home/azureuser/hadoop/hadoop-3.3.0/bin/hadoop \
  fs \
  -Dfs.azure.account.key.sshadlsgen2.dfs.core.windows.net=CHooPyc1B2ec4WAYcC8o/Yw6kxEyXGx6QhOXv7sTMH2GbK6bpgJb7BT73dneQiW9jlQneDssbkWycSMIeIZVfA== \
  -fs abfs://ssh-test-fs@sshadlsgen2.dfs.core.windows.net/ \
  -ls /
<<!!!
  Run ls using MSI authentification
!!!
/home/azureuser/hadoop/hadoop-3.3.0/bin/hadoop \
  fs \
  -Dfs.azure.ssl.channel.mode=Default_JSSE \
  -Dfs.azure.account.oauth.provider.type=org.apache.hadoop.fs.azurebfs.oauth2.MsiTokenProvider \
  -Dfs.azure.account.auth.type=OAuth \
  -Dfs.azure.account.oauth2.msi.tenant=4d33abfb-7bd8-40ba-bc97-5690aaa61040 \
  -Dfs.azure.account.oauth2.client.id=ba8f6a15-3d6e-4fbf-a171-2e36a97c3501 \
  -fs abfs://ssh-test-fs@sshadlsgen2.dfs.core.windows.net/ \
  -ls /
