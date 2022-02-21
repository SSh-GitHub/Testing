D:\openssl\bin\openssl.exe s_client -debug -msg -connect localhost:9093 -tls1 -cert ca-cert  -key ca-key 
rem D:\openssl\bin\openssl.exe s_client -debug -msg -connect 10.0.200.60:9093 -tls1 -cert client-cert-signed  -key ca-key 
rem D:\openssl\bin\openssl.exe s_client -debug -msg -connect 10.0.200.60:9093 -tls1 -cert server-cert-signed  -key ca-key 



