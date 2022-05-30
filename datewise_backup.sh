#!/bin/bash
#PURPOSE: date wise  backup from server 2.12 to 2.14 
#VERSION: 
#CREATED DATE: Thu May 26 18:38:52 IST 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START

a=`date  --date="yesterday" +"%Y-%m-%d"`
ls /dev/datewise/ | grep -w $a
if [ $? -eq 0 ]
then 
	sudo cd /var/datewise

	sudo scp -r /dev/datewise/ | grep $a /home/akshay/ 
	
else 

	echo " file not Found"
fi




#END
