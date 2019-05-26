#!/bin/bashh
rm -rf /etc/yum.repos.d/*.repo
echo "[dvd]
name=rhel7
baseurl=ftp://192.168.2.254/centos-1804
enabled=1
gpgcheck=0" > /etc/yum.repos.d/dvd.repo
yum repolist
