#!/bin/bash
MYPWD=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
echo $MYPWD > /root/.mysqlrootpasswd
mysql -e "create database easy_forms; create database sitebuilder;"
mysql easy_forms < /var/www/easyforms/local/easy_forms.sql
mysql -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('${MYPWD}');"
