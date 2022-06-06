#!/bin/bash


sudo apt install -y ibus-mozc
#reboot
#migiue 'A' icon
sudo raspi-config
#Interface Options -> ssh enable
#sudo lsof -i:22		#kakuninn
sudo apt install -y apache2 default-mysql-server php php-mysql
#sudo systemctl enable apache2.service
#sudo systemctl status apache2.service	#kakuninn
mysql -u root
#mysql> create database wordpress default character set utf8;
#mysql> grant all on wordpress(db name).* to wordpress@localhost identified by 'password';
#このマシンでは間違えてデータベースのパスワードが'pasword'になっている（Sが一個少ない）
#mysql> flush privileges;	(kenngenn hennkou yuukouka)
#sudo systemctl enable mysqld.service
#sudo systemctl status mysqld.service	#kakuninn
cd /var/www/html 	#Apache2 document root
sudo wget https://ja.wordpress.org/latest-ja.tar.gz
sudo unar latest-ja.tar.gz
sudo chown -R www-data:www-data .
ls -l	#kakuninn

#sudo vim /etc/xdg/openbox/lxde-pi-rc.xml 
#<keybind key="Print">
#  <action name="Execute">
#    <command>scrot</command>
#  </action>
#</keybind>

