#!/bin/bash
yum -y install gcc readline-devel ncurses-devel pcre-devel python-docutils
cd lnmp_soft
useradd -s /sbin/nologin varnish
tar -xf varnish-5.2.1.tar.gz
cd varnish-5.2.1/
./configure
make && make install
cp  etc/example.vcl   /usr/local/etc/default.vc
