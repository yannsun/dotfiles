#! /bin/bash
# 安装samba服务

##安装samba
sudo apt-get install samba samba-client samba-common;

##复制配置文件
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf_back;

##检验参数
testparm;

##重启服务
sudo service sambad restart;

