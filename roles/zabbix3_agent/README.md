Role name: sardpost.zabbix3_agent
=========

This role installs zabbix-agent (version 3) on RHEL/Centos 7 servers and ensures 
SELinux context is alligned

Requirements
------------

This role assumes that SElinux is enabled or at least in permissive status.

Role Variables
--------------

In defaults/main.yml it's possible to specify some variables

    zabbix_version: 3.0             (to specify the Zabbix main version)
    zabbix_repo: True               (to specify if you want to run the task to install Zabbix repo)

Dependencies
------------

No dependencies

Example Playbook
----------------

Let's assume we have this playbook called zabbix-playbook.yml

    - name: Install Zabbix 3 Agent
      hosts: servers
      remote_user: centos
      sudo: yes

    roles:
    - sardpost.zabbix3_agent
         
we can launch the playbook with the command:

    ansible-playbook zabbix_playbook.yml -K

    (-K) parameter is for Ansible to ask sudo password.
         
         
License
-------

GPLv3

Author Information
------------------

Davide M. Puggioni
