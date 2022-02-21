rem Generate random block
D:\openssl\bin\openssl.exe rand -out ssh_test_rand.dat 1024
rem Generate RSA key
D:\openssl\bin\openssl.exe genrsa -out ssh_test_genrsa.dat