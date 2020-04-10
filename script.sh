MYSQL_DUMP=dump.sql
MYSQL_PASS=test
MYSQL_DB=db_test

#!/bin/bash
apt-get update
apt-get install nginx -y
apt-get install php-fpm php-mysql -y

apt-get install debconf-utils -y
debconf-set-selections <<< "mysql-server mysql-server/root_password password $MYSQL_PASS"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password $MYSQL_PASS"

apt-get install mysql-server -y

cp -f /var/www/vagrant/nginx/default /etc/nginx/sites-available/default
cp -f /var/www/vagrant/nginx/index.php /var/www/html/index.php

systemctl reload nginx
systemctl restart php7.0-fpm
systemctl restart mysql
# systemctl enable mysql

mysql -u root -p$MYSQL_PASS -e "create database $MYSQL_DB;"
mysql -u root -p$MYSQL_PASS $MYSQL_DB < /var/www/vagrant/$MYSQL_DUMP

