#! /bin/bash

# 安装wireshark
sudo dpkg-reconfigure wireshark-common

# 增加当前用户到wireshark用户组,解决couldn't run /usr/bin/dumpcap in child process: Permission Denied问题
sudo gpasswd -a $USER wireshark

# restart the machine
