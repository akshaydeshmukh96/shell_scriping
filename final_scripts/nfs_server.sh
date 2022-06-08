#!/bin/bash
#PURPOSE: nfs server creation by using scripts 
#VERSION: 
#CREATED DATE: Wed May 25 15:31:36 IST 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START

a=`rpm -qa nfs-utils | cut -d'-' -f1-2`
if [ $a = "nfs-utils" ]
then 
	echo -e "\033[32m  nfs rpms is already installed \033[0m "
else 
	echo -e  "\033[32m NFS installation is begins \033[0m"
	yum install nfs-utils -y

fi

systemctl start nfs-server
systemctl enable nfs-server


#END
