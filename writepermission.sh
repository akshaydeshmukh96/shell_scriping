#!/bin/bash
#PURPOSE: To find the  writepermissionfiles and write somedata
#VERSION: 
#CREATED DATE: Thu May 5 09:25:10 PDT 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START

echo "Enter file name"
read file

if [ -f $file ]
then
echo "$file found"
	if [ -w $file ]
	then
	echo "enter the text here which you wantto put in the $file file"
	cat >> $file
	
	else 
	echo "file does not access write permission"
fi

else 
echo "$file not exist"

fi


#END
