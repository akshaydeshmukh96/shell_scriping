#!/bin/bash

echo "**********************LVM******************************"
cat << EOF
select the way of adding LVM 
*************************************************************
1) Create LVM Through Partitioning
2) Create LVm Through Disk
3) LV Extend
4) LV Reduce
EOF
echo "**********************LVM******************************"


#echo -e "\033[33m select the way of adding LVM \033[0m "
#echo -e "\033[33m 1) Create LVM Through Partitioning \033[0m "
#echo -e "\033[33m 2) Create LVm Through Disk \033[0m"
#echo -e "\033[33m 3) LV Extend \033[0m "
#echo -e "\033[33m 4) LV Reduce \033[0m "



read -p "Enter Number: " Num
case $Num in
1)      read -p "Please Enter disk names in one line seperated by space : "  "a"
	touch test.txt
	read -p "Enter pv name: " bb
	
        for var in $a
do
`fdisk $var << EOF 
n
p
1


t
8e
w
EOF ` >> /dev/null
partprobe $var
aa=$(lsblk | grep `echo $var | cut -d'/' -f3` | wc -l)
aaa=`for disc in $var; do echo $disc 1; done | sed 's/ //'`
echo $aaa  >> test.txt
#read -p "Enter pv name: " bb 
if [ $aa -eq 2 ] ; then

pvcreate $bb $aaa    >> /dev/null
echo -e "\033[33m Physical Volume for $aaa  created successfully. \033[0m"
else
        echo -e  "\033[31m Your partition didn't find \033[0m"
        echo "please try again"
        exit
fi
done
read -p "Give VGname as per your requirement: " b
vgcreate $b `cat test.txt`   >> /dev/null
read -p "Give a LVM name: " c
read -p "Give the size of LVM: " d
lvcreate -L $d -n $c /dev/$b
read -p "Enter filesystem name: " e
mkfs.$e /dev/$b/$c
read -p "Give a directory name for mounting :" f
echo "/dev/$b/$c $f $e defaults 0 0"  >> /etc/fstab
mount -a
echo -e "\033[32m LVM is successfully created \033[0m"

;;
2)
read -p "Please Enter disk names in one line seperated by space : "  "a"
for var in $a
do
aa=$(lsblk | grep `echo $var | cut -d'/' -f3` | wc -l)
if [ $aa -eq 1 ] ; then 
read -p "Enter pv name: " cc
pvcreate $cc $a >> /dev/null
echo -e "\033[33m Physical Volume for created successfully. \033[0m"
else
        echo -e  "\033[31m Your partition didn't find \033[0m"
        echo "please try again"
        exit
fi
done

read -p "Give VGname as per your requirement: " b
vgcreate $b $a >> /dev/null
read -p "Give a LVM name: " c
read -p "Give the size of LVM: " d
lvcreate -L $d -n $c /dev/$b  >> /dev/null
read -p "Enter filesystem name: " e
mkfs.$e /dev/$b/$c  >>/dev/null
read -p "Give a directory name for mounting :" f
echo "/dev/$b/$c $f $e defaults 0 0"
mount -a
echo -e "\033[32m LVM is successfully created. \033[0m"
 
;;
3) echo "*********************LV EXTEND******************************"
read -p "Give LV path to extend : " p
read -p "How much size you want to extend : " s

lvextend -L +$s $p -rn >> /dev/null
if [ $? -eq 0 ]
then 
echo -e "\033[32m LVM is successfully Extend \033[0m"
else 
echo -e "\033[33m Try again \033[0m"
fi

;;
4) echo "*********************LV REDUCE******************************" 

read -p "Give LV mounted path :" m
umount $m >> /dev/null
read -p "Give LV path : " l
e2fsck -f $l >> /dev/null
read -p "Give Final disk size: " di
resize2fs $l $di >> /dev/null
lvreduce -L $di $l >> /dev/null
mount $l $m
echo -e "\033[32m LVM is successfully reduced \033[0m"


;;

*) echo "\033[33m Wrong Input  \033[0m "
;;
esac
