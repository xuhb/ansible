# This file contains environment variables that are passed to mesos-agent.
# To get a description of all options run mesos-agent --help; any option
# supported as a command-line option is also supported as an environment
# variable.

# You must at least set MESOS_master.

# The mesos master URL to contact. Should be host:port for
# non-ZooKeeper based masters, otherwise a zk:// or file:// URL.
#export MESOS_master=unknown-machine:5050

# Other options you're likely to want to set:
# export MESOS_log_dir=/var/log/mesos
# export MESOS_work_dir=/var/run/mesos
# export MESOS_isolation=cgroups

# The mesos master URL to contact. Should be host:port for
# non-ZooKeeper based masters, otherwise a zk:// or file:// URL.
#export MESOS_master=192.168.1.114:5050
export MESOS_master=zk://{{zk_ip_1}}:2181,{{zk_ip_2}}:2181,{{zk_ip_3}}:2181/mesos
#export zk=/usr/local/mesos/etc/mesos/zk

# Other options you're likely to want to set:
export MESOS_port=5051
export MESOS_hostname={{ansible_nodename}}
export MESOS_log_dir=/var/log/mesos/agent
export MESOS_work_dir=/var/run/mesos/agent
export MESOS_logging_level=INFO
export MESOS_isolation=cgroups
