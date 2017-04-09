#! /bin/bash
# install_dev.sh : 安装开发环境

# Check if user is root
if [ $(id -u) != "0" ]; then
    echo "Error: You must be root to run this script, please use root to install lnmp"
    exit 1
fi

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

#配置bash

#配置vim
##安装Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
##安装vim插件
vim +PluginInstall +qall;

#配置composer
cd ~;
##下载安装脚本
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');";
##执行安装过程
php composer-setup.php;
##删除安装脚本
php -r "unlink('composer-setup.php');";
##全局安装composer
sudo mv composer.phar /usr/local/bin/composer;
##修改全局配置文件
composer config -g repo.packagist composer https://packagist.phpcomposer.com;

#配置samba共享

#下载项目
cd ~;
##github上的项目
##coding上的项目
echo "下载coding上的项目";
git clone git@git.coding.net:yannsun/dev.git;
