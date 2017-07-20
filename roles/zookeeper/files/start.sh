#!/bin/bash
export JAVA_HOME=/opt/jdk1.8.0_111

cd /home/hadoop/zookeeper-3.4.6/bin
nohup ./zkServer.sh start &

