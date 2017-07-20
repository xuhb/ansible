#!/bin/sh

#backup /etc/fstab
cp /etc/fstab /etc/fstab.bak
PARTITION_LIST="vdb"
cnt=0

for PARTITION in $PARTITION_LIST
do
  cnt=$(($cnt+1));
  UUID=`blkid "/dev/""$PARTITION" | awk '{print $2}' | sed 's/\"//g'`
  echo $UUID

  echo "add $PARTITION to /etc/fstab"
  MOUNTDIR="/home"
  #echo "mkdir -p $MOUNTDIR"
  #mkdir -p $MOUNTDIR

  echo "appending \"$UUID $MOUNTDIR xfs defaults 0 0\" to /etc/fstab "
  echo "$UUID $MOUNTDIR xfs defaults 0 0" >> /etc/fstab
  echo "" 
done

#mount all partitions
mount -a

#show mounted partitions
df -h
