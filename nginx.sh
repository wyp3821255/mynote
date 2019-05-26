#!/bin/bash
cd
tar -xf lnmp_soft.tar.gz
cd lnmp_soft
tar -xf nginx-1.12.2.tar.gz
cd nginx-1.12.2/
yum -y install gcc pcre-devel openssl-devel
useradd -s /sbin/nologin nginx
./configure --prefix=/usr/local/nginx --user=nginx --group=nginx --with-http_ssl_module --with-stream --with-http_stub_status_module 
make && make install
/usr/local/nginx/sbin/nginx
ss -antulp | grep nginx
