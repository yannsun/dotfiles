#! /bin/bash
# install_dev.sh : 安装开发环境

#准备工作
##生成ssh密钥
ssh-keygen -t rsa -b 4096 -C "sunjinliang1992@gmail.com";

#安装软件
##更新软件源
sudo apt-get update && sudo apt-get upgrade;
#安装lrzsz，传输文件
sudo apt-get install lrzsz;
#安装git
sudo apt-get install git;
#安装ctags
sudo apt-get install ctags;

#配置bash

#配置vim
##安装Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
##安装vim插件
vim +PluginInstall +qall;
