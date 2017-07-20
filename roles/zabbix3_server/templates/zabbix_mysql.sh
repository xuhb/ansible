#!/bin/bash  
mysql -uroot -p{{mysql_root_password}} <<EOF
create database zabbix;
grant all privileges on zabbix.* to zabbix@'%' identified by 'zabbix';
flush privileges;
use mysql;
delete from user where user='';
flush privileges;
EOF
