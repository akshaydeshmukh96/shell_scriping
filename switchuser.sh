#!/bin/bash
#PURPOSE:switch user by using scrips
#VERSION: 
#CREATED DATE: Tue May 24 14:37:34 IST 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START

read -p "enter username: " i
if test -z $i
then
	echo "you have entered blank space, please enter valid username"
elif test $i = "akshay"
then 
	echo `su akshay`
elif test $i = "root"
then 	
	echo `su root`
else 
	echo "No user found"
fi


#END
