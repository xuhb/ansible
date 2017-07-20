# This file contains environment variables that are passed to mesos-master.
# To get a description of all options run mesos-master --help; any option
# supported as a command-line option is also supported as an environment
# variable.

# Some options you're likely to want to set:
export MESOS_zk=zk://{{zk_ip_1}}:2181,{{zk_ip_2}}:2181,{{zk_ip_3}}:2181/mesos # zookeeper 地址 
export MESOS_log_dir=/var/log/mesos/master   # 设置日志目录
export MESOS_work_dir=/var/run/mesos/master  # 设置work目录，会存放一些运行信息
export MESOS_quorum=2                        # 设置master节点个，3个节点值为2
export MESOS_ip={{ansible_eth0.ipv4.address}}                        # 设置ip地址
export MESOS_hostname_lookup="false"
export MESOS_CLUSTER=mesos_open01            # 设置集群名称
export MESOS_hostname={{ansible_eth0.ipv4.address}}   # 设置master hostname
export MESOS_logging_level=INFO              # 设置日志级别
export MESOS_offer_timeout=60secs            # 设置offer的超时时间
# export MESOS_agent_ping_timeout=15         # 设置ping 超时时间，默认15s
# export MESOS_allocation_interval=1         # 设置资源 allocation间隔，默认1s
