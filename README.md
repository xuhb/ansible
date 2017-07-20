安装说明
=========

基础环境安装
- 安装ansible服务、配置好root账户各节点密码登陆
- 执行hostname修改服务器主机名
- 执行useradd创建hadoop用户
- 执行nopass.yml对hadoop用户免密登陆
- 执行tiaoyou.yml优化系统参数、关闭selinux、关闭防火墙
- 执行jdk.yml安装JDK

相关集群安装顺序
------------
- zookeeper
- hadoop
- spark
- kafka
- flume
- elasticsearch
- hive
- nginx
- mysql
- tomcat
- redis
- rabbitmq



安装注意事项
--------------
- 需要将安装包上传/etc/ansible/package/目录下
- 安装相应模块时需要体修改里面的路径、ip等信息
- 安装命令如:ansible-playbook mysql.yml

