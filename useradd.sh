#!/bin/bash
read  -p  "请输入您的用户名:"  user
useradd  $user
stty  -echo
read  -p  "请输入您的密码:"  passwd
echo  $passwd  >  passwd  --stdin  $user
stty echo
echo ""
