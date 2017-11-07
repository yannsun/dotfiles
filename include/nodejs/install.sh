#! /bin/bash
# 安装nodejs
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

# 更换npm源
npm config set registry https://registry.npm.taobao.org

# 查看npm源地址
npm config get registry
