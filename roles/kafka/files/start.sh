#!/bin/bash
cd /home/hadoop/kafka_2.10-0.10.2.0/bin

nohup ./kafka-server-start.sh ../config/server.properties &

