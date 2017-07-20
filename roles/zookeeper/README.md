zookeeper安装说明
=========
hosts文件配置

```yml
    [zookeeper]
    open132 zookeeper_id=1
    open133 zookeeper_id=2 
    open134 zookeeper_id=3
```


zookeeper.yml说明
------------
```yml
    - hosts: zookeeper
    remote_user: hadoop
    vars:
     - zookeeper_data_dir: "/home/hadoop/zookeeper-3.4.6/data" [zookeeper数据存放路径]
     - zookeeper_log_dir: "/var/log/zookeeper" [日志路径]
     - zookeeper_dir: "/home/hadoop/zookeeper-3.4.6" [安装路径]
     - zookeeper_conf_dir: "/home/hadoop/zookeeper-3.4.6/conf" [配置文件路径]
     - status: "install" [首次安装时为install,修改配置文件时为空值即可]
    roles:
     - zookeeper


```


安装注意事项
--------------
- 默认安装在/home/hadoop/ 如果安装位置有变化注意修改start.sh脚本

