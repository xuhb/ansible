#!/bin/bash
pid=`ps -ef | grep Dzookeeper | grep zookeeper-3.4.6 | awk '{print $2}'`
if [ "$pid" != "" ];
    then
        kill -9 $pid
       
fi
