#! /bin/bash
# 安装composer

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
