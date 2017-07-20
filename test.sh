#!/bin/bash

#ansible $1 -m ping

#ansible-playbook zookeeper.yml --extra-vars "hosts=$1-$2 user=root" --tags=$2
ansible-playbook zookeeper.yml --extra-vars "hosts=$1 user=root" --tags=$2
