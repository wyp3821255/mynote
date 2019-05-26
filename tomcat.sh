#!/bin/bash
yum -y install java-1.8.0-openjdk-devel.x86_64
yum -y install java-1.8.0-openjdk-headless
cd lnmp_soft
tar -xf apache-tomcat-8.0.30.tar.gz
mv apache-tomcat-8.0.30 /usr/local/tomcat
/usr/local/tomcat/bin/startup.sh
ss -antulp | grep java
