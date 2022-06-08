#!/bin/bash
# SAMBA server installation by using scripts.

yum install samba -y

if [ $? -eq 0 ]
then 
	echo "SAMBA server is successfully installed"
else 
	echo "Unabled to installed SAMBA server"
	exit
fi


read -p "Give your directory name : " i
mkdir $i
chmod 777 $i
sed '70a hosts allow = 127. 192.169.0.' /etc/samba/smb.conf

cat >> /etc/samba/smb.conf << EOF

[scripts]
name = this is my samba server make by script
path = "$i"
public = yes 
writable = yes
EOF

systemctl start smb
systemctl enable smb

a=$(pidof samba)

echo "SAMBA server is successfully installed & PID of samba server is $a "



echo "***********************************************************"
echo Done
