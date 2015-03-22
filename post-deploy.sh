#!/bin/bash
value=$( grep -ic "entry" /etc/hosts )
if [ $value -eq 0 ]
then
echo "
################ ceph-cookbook host entry ############

192.168.1.101 ceph-node1
192.168.1.102 ceph-node2
192.168.1.103 ceph-node3
192.168.1.104 ceph-node4
192.168.1.105 ceph-node5
192.168.1.110 client-node1
192.168.1.111 os-node1.cephcookbook.com os-node1
192.168.1.120 owncloud-node1

######################################################
" >> /etc/hosts
fi
