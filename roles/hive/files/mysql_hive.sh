#!/bin/bash  
mysql -uroot -ppassword <<EOF
create database hive;
grant all privileges on hive.* to hive@'%' identified by 'hive';
flush privileges;
use mysql;
delete from user where user='';
flush privileges;
EOF

