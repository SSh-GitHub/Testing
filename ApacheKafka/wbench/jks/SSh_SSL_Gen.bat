rem http://kafka.apache.org/documentation.html#security_ssl
rem ==========================================================================
rem Creating your own CA
rem --------------------------------------------------------------------------
D:\openssl\bin\openssl.exe req -new -x509 -keyout ca-key -out ca-cert -days 365 -config D:\openssl\share\openssl.cnf

rem ==========================================================================
rem Generate SSL key and certificate for each Kafka broker
rem --------------------------------------------------------------------------
D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore server.keystore.jks -storepass amu111 -alias localhost -validity 1000 -genkey -keyalg RSA
rem To add a SAN field append the following argument -ext SAN=DNS:{FQDN} to the keytool command:
rem D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore server.keystore.jks -storepass amu111 -alias localhost -validity 1000 -genkey -keyalg RSA -ext SAN=DNS:{FQDN}
rem D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore server.keystore.jks -storepass amu111 -alias localhost -validity 1000 -genkey -keyalg RSA -ext SAN=DNS:localhost
rem D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore server.keystore.jks -storepass amu111 -alias localhost -validity 1000 -genkey -keyalg RSA -ext SAN=ip:127.0.0.1
D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore server.keystore.jks -storepass amu111 -alias localhost -validity 1000 -genkey -keyalg RSA -ext SAN=DNS:localhost
rem The following command can be run afterwards to verify the contents of the generated certificate:
D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore server.keystore.jks -storepass amu111 -list -v 
rem ==========================================================================

rem ==========================================================================
rem Export certicate into file
rem --------------------------------------------------------------------------
D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore server.keystore.jks -storepass amu111 -alias localhost -certreq -file server-cert-file
rem ==========================================================================

rem ==========================================================================
rem Then sign it with the CA:
rem --------------------------------------------------------------------------
D:\openssl\bin\openssl.exe x509 -req -CA ca-cert -CAkey ca-key -in server-cert-file -out server-cert-signed -days 1000 -CAcreateserial -passin pass:amu111
rem ==========================================================================

rem ==========================================================================
rem Finally, you need to import both the certificate of the CA and the signed certificate into the keystore:
rem --------------------------------------------------------------------------
D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore server.keystore.jks -storepass amu111 -alias CARoot -import -file ca-cert
D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore server.keystore.jks -storepass amu111 -alias localhost -import -file server-cert-signed
rem ==========================================================================

rem ==========================================================================
rem Note: If you configure the Kafka brokers to require client authentication by setting ssl.client.auth to be "requested" or "required" 
rem on the Kafka brokers config then you must provide a truststore for the Kafka brokers as well and it should have all the CA certificates 
rem that clients' keys were signed by.
rem --------------------------------------------------------------------------
D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore server.truststore.jks -storepass amu111 -alias CARoot -import -file ca-cert
rem ==========================================================================



rem ==========================================================================
rem Generate SSL key and certificate for each Kafka client
rem --------------------------------------------------------------------------
D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore client.keystore.jks -storepass amu111 -alias localhost -validity 1000 -genkey -keyalg RSA
rem To add a SAN field append the following argument -ext SAN=DNS:{FQDN} to the keytool command:
rem D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore server.keystore.jks -storepass amu111 -alias localhost -validity 1000 -genkey -keyalg RSA -ext SAN=DNS:{FQDN}
rem D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore server.keystore.jks -storepass amu111 -alias localhost -validity 1000 -genkey -keyalg RSA -ext SAN=DNS:localhost
rem D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore server.keystore.jks -storepass amu111 -alias localhost -validity 1000 -genkey -keyalg RSA -ext SAN=ip:127.0.0.1
D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore client.keystore.jks -storepass amu111 -alias localhost -validity 1000 -genkey -keyalg RSA -ext SAN=DNS:localhost
rem The following command can be run afterwards to verify the contents of the generated certificate:
D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore client.keystore.jks -storepass amu111 -list -v 
rem ==========================================================================

rem ==========================================================================
rem Export certicate into file
rem --------------------------------------------------------------------------
D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore client.keystore.jks -storepass amu111 -alias localhost -certreq -file client-cert-file
rem ==========================================================================

rem ==========================================================================
rem Then sign it with the CA:
rem --------------------------------------------------------------------------
D:\openssl\bin\openssl.exe x509 -req -CA ca-cert -CAkey ca-key -in server-cert-file -out client-cert-signed -days 1000 -CAcreateserial -passin pass:amu111
rem ==========================================================================

rem ==========================================================================
rem Finally, you need to import both the certificate of the CA and the signed certificate into the keystore:
rem --------------------------------------------------------------------------
D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore client.keystore.jks -storepass amu111 -alias CARoot -import -file ca-cert
D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore client.keystore.jks -storepass amu111 -alias localhost -import -file client-cert-signed
rem ==========================================================================

rem ==========================================================================
rem Note: If you configure the Kafka brokers to require client authentication by setting ssl.client.auth to be "requested" or "required" 
rem on the Kafka brokers config then you must provide a truststore for the Kafka brokers as well and it should have all the CA certificates 
rem that clients' keys were signed by.
rem --------------------------------------------------------------------------
D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore client.truststore.jks -storepass amu111 -alias CARoot -import -file ca-cert
rem ==========================================================================