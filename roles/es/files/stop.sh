#!/bin/bash
pid=`ps -ef | grep java | grep elasticsearch | awk '{print $2}'`
if [ "$pid" != "" ];
    then
        kill -9 $pid
       
fi
