#!/bin/bash
value=$( grep -ic "entry" /etc/hosts )
VSMCONTROLLER="vsm-controller"
host=$(hostname)

if [ $value -eq 0 ]
then
echo "
################ VSM host entry ######################

192.168.123.100 vsm-controller
192.168.123.101 vsm-node1
192.168.123.102 vsm-node2
192.168.123.103 vsm-node3


######################################################
" >> /etc/hosts
fi
if [ -e /etc/redhat-release ]
then

	useradd cephuser
	echo 'cephuser:cephuser' | chpasswd
	echo "cephuser ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers

	systemctl stop ntpd
	systemctl stop ntpdate
	ntpdate 0.centos.pool.ntp.org > /dev/null 2> /dev/null
	systemctl start ntpdate
	systemctl start ntpd
	yum install -y tree git epel-release

	if [ -e /etc/rc.d/init.d/ceph ]
	then
	service ceph restart mon > /dev/null 2> /dev/null
	fi


	if [ $host != $VSMCONTROLLER ]
	then
		parted /dev/sdb -- mklabel gpt
		parted /dev/sdc -- mklabel gpt
		parted /dev/sdd -- mklabel gpt
		parted -a optimal /dev/sdb -- mkpart xfs 1MB 100%
		parted -a optimal /dev/sdc -- mkpart xfs 1MB 100%
		parted -a optimal /dev/sdd -- mkpart xfs 1MB 100%
	fi

fi
