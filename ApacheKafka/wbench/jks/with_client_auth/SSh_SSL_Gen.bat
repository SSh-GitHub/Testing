set KEYSTORE=%1
set TRUSTSTORE=%2
echo KEYSTORE=%KEYSTORE%
echo TRUSTSTORE=%TRUSTSTORE%

D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore %KEYSTORE%.keystore.jks -storepass amu111 ^
  -alias %KEYSTORE%_cert -keypass amu111 -validity 36500 -genkey -keyalg RSA ^
  -dname "CN=Sergiy, OU=MITI, O=MITI, L=Poltava, ST=Poltava, C=UN"

D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore %KEYSTORE%.keystore.jks -storepass amu111 ^
  -list

D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore %KEYSTORE%.keystore.jks -storepass amu111 ^
  -exportcert -alias %KEYSTORE%_cert -file %KEYSTORE%.cer 

D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -printcert -file %KEYSTORE%.cer -v

D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore %TRUSTSTORE%.truststore.jks -storepass amu111 ^
  -import -file %KEYSTORE%.cer -alias %KEYSTORE%_cert

D:\user\miti\dev\trunk\External\jdk\jdk-1.8.0-x64\jre\bin\keytool.exe -keystore %TRUSTSTORE%.truststore.jks -storepass amu111 ^
  -list 
