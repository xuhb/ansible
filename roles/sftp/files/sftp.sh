#!/bin/bash
groupadd sftp
useradd -g sftp -s /bin/false testuser
echo 'testuser'| passwd --stdin testuser
mkdir -p /opt/sftp/testuser/upload
usermod -d /opt/sftp/testuser testuser
chown root:sftp /opt/sftp/testuser
chmod 755 /opt/sftp/testuser
cd /opt/sftp/testuser/
chown -R testuser:sftp upload/
chmod -R 755 /opt/sftp/testuser/upload

sed -i 's/Subsystem/\#Subsystem/g' /etc/ssh/sshd_config

echo "
Subsystem       sftp    internal-sftp
Match Group sftp 
ChrootDirectory /opt/sftp/%u 
ForceCommand    internal-sftp 
AllowTcpForwarding no 
X11Forwarding no
" >>/etc/ssh/sshd_config

service sshd restart
