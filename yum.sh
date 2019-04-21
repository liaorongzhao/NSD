#!/bin/bash
rm -rf  /etc/yum.repos.d/*
A=abc
B=http://192.168.4.254/mnt
C=/etc/yum.repos.d/local.repo
echo "正在配置yum源......"
echo "[$A]
name=$A 
baseurl=$B
enable=1
gpgcheck=0 " >  $C
yum clean all > /dev/null
echo "配置完成。"
echo "软件数量有:"
yum repolist | tail -1
