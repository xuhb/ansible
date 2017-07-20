#!/bin/sh
 ansible hosts_all -a "sed -i 's/#   StrictHostKeyChecking ask/StrictHostKeyChecking no/g' /etc/ssh/ssh_config"
 ansible hosts_all -a "sed -n '35p' /etc/ssh/ssh_config "
 ansible hosts_all -a "yum install -y expect"
 ansible hosts_all -a "systemctl stop firewalld.service"
 ansible hosts_all -a "systemctl disable firewalld.service"
