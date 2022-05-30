#!/bin/bash
#PURPOSE: enter name user is login or nor 
#VERSION: 
#CREATED DATE: Wed May 25 16:12:44 IST 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START

read -p "Enter user name: " u
a=`who | awk '{print $1}'`
echo $a | grep $u  >> /dev/null
if [ $? -le 0 ]
then 
	echo "$u user is Loggin"
else 
	echo "$u user is Ofline"

fi


#END
