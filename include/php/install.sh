#! /bin/bash
# 安装php
sudo apt-get install php7.0;
sudo apt-get install php-mysql;
sudo apt-get install php7.0-curl;
sudo apt-get install php7.0-mbstring;
sudo apt-get install php7.0-xml;
sudo apt-get install php7.0-zip;
# 编译安装php
## 安装zlib和libxml
sudo apt-get install libxml2*;

wget http://cn.php.net/distributions/php-7.0.18.tar.gz;
tar -zxvf php-7.0.18.tar.gz;
cd php-7.0.18/ ;
./configure;

#安装phpredis扩展
##下载和安装phpredis
git clone  https://github.com/phpredis/phpredis.git;
cd phpredis;
git checkout php7;
phpize;
./configure;
sudo make && sudo make install;
##启动扩展
sudo vim /etc/php/7.0/fpm/php.ini;
###[Redis]
###extension=redis.so
sudo service php7.0-fpm restart
