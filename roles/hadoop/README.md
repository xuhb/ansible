zookeeper安装说明
=========
hosts文件配置

```yml
    [hadoop]
    open131 hadoop_type_of_node=master1
    open132 hadoop_type_of_node=master2
    open133 hadoop_type_of_node=slave
    open134 hadoop_type_of_node=slave
```


hadoop.yml说明
------------
```yml
- hosts: hadoop
  remote_user: hadoop
  vars:
     - javapath: "/opt/jdk1.8.0_111" [jdk 安装路径]
     - hadoop_home: "/home/hadoop/hadoop-2.6.0" [hadoop部署路径]
     - zookeeper_host_1: "open132" [zookeeper 节点1]
     - zookeeper_host_2: "open133" [zookeeper 节点2]
     - zookeeper_host_3: "open134" [zookeeper 节点3]

     - NameNode1: "open131" 
     - NameNode2: "open132"

     - rm1_ip: "172.16.1.131"
     - rm2_ip: "172.16.1.132"
     - status: " "
  roles:
     - hadoop
  rm1_ip,rm2_ip一般为NameNode1,NameNode2节点ip

```


安装注意事项
--------------
```yml
   安装完成后检查集群状态
   hdf：
   http://open131:50070/
   http://open133:50070/
   yarn：
   http://open131:8188/
   如果服务异常，需要手动重启服务！ 

```
