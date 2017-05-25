#! /bin/bash
#安装golang开发环境
##下载安装包
wget https://storage.googleapis.com ... ar.gz
tar -C /usr/local -xzf go1.6.3.linux-amd64.tar.gz

##设置PATH
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
source ~/.bashrc

##验证安装
go version

##设置环境变量
echo "export GOROOT=/usr/local/go" >> ~/.bashrc
echo "export GOPATH=$HOME/go" >> ~/.bashrc
source ~/.bashrc
