#!/bin/bash
MYPWD=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1| awk '{ print $1; }')
echo $MYPWD >> /root/.mysqlrootpasswd
mysql -uroot -ppass123 -e "create database easy_forms; create database sitebuilder;"
mysql -uroot -ppass123  easy_forms < /var/www/easyforms/local/easy_forms.sql
mysql -uroot -ppass123 -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('${MYPWD}');"

