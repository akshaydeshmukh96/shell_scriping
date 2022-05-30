#!/bin/bash
#PURPOSE: add users by using scrips  
#VERSION: 
#CREATED DATE: Mon May 23 17:29:38 IST 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START

read -p "Please enter new USER: " i

for a in $i
	do 	
		useradd $i >> /dev/null
		echo 12345678 | passwd --stdin $i  >> /dev/null
		chage -d 0 $i >> /dev/null
			if [ $? -le 0 ]
				then
					echo " user added successfully, Default password is '12345678' "
			fi
	done




#END
