#declare hdfs_host=ec2-18-206-240-78.compute-1.amazonaws.com
#declare hdfs_host=ec2-107-20-58-157.compute-1.amazonaws.com
declare hdfs_host=ip-172-31-28-135.ec2.internal

declare hdfs_auth=$1
declare hdfs_command=$2

if [[ $hdfs_auth != simple && $hdfs_auth != kerberos ]]; then
  echo The authorising method must be: 'simple' or 'kerberos'
  exit
fi

export JAVA_HOME=/usr
export HADOOP_HOME=/home/hadoop/hadoop-3.2.1
export HADOOP_CONF_DIR=/home/hadoop/etc/${hdfs_auth}
export HADOOP_LOG_DIR=/home/hadoop/logs/${hdfs_auth}
export HADOOP_PID_DIR=/home/hadoop/tmp/${hdfs_auth}
export HADOOP_OPTS=-Dhdfs_host=${hdfs_host}

command="${HADOOP_HOME}/bin/hdfs --config /home/hadoop/etc/${hdfs_auth} ${hdfs_command}"
echo ${command}
${command}

