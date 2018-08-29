#! /bin/bash
# start.sh : start 启动脚本

# Check root permission 检查root权限
if [ "$(id -u)" != "0" ]; then
    echo "Error: You must be root to run this script, please use root to install lnmp"
    exit 1
fi

# Output begin information 输出
clear
echo "+------------------------------------------------------------------------+"
echo "|          Install the development environment, Written by Yannsun       |"
echo "+------------------------------------------------------------------------+"

#准备工作
##生成ssh密钥
ssh-keygen -t rsa -b 4096 -C "sunjinliang1992@gmail.com";
##配置git账号邮箱

#安装软件
##更新软件源
sudo apt-get update && sudo apt-get upgrade;
##安装lrzsz，传输文件
sudo apt-get install lrzsz;
##安装git
sudo apt-get install git;
##安装ctags
sudo apt-get install ctags;
##安装build-essential
sudo apt-get insatll build-essential;
##安装php

# Bash


# Tmux

# Vim
## 安装Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
## 安装vim插件
vim +PluginInstall +qall;
## 配置用户信息
git config --global user.name "yannsun"
git config --global user.email "sunjinliang1992@gmail.com"
git config --global core.editor vim

# Composer

#配置samba共享

#下载项目
cd ~;
##github上的项目
##coding上的项目
echo "下载coding上的项目";
git clone git@git.coding.net:yannsun/dev.git;
