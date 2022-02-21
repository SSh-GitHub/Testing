kinit -A ^
      -J-Dsun.security.krb5.debug=true ^
      -J-Djava.security.krb5.conf=D:\user\Testing\ApacheHDFS\wbench\etc\krb5.conf ^
      -k -t "D:\user\Testing\ApacheHDFS\wbench\Ubuntu-18.04+Hadoop-3.2.1+Kerberos-5\home\hadoop\keytabs\hdfs_client.keytab" ^
      hdfs_client@HADOOP.REALM 
