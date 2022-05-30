#!/bin/bash
#PURPOSE:search file	
#VERSION: 1.0
#CREATED DATE: Thu May 5 09:17:23 PDT 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START



echo -e "Enter the name of the file:"
read file

if [ $file ]
then

echo "$file found"
else 

echo "file not found"

fi

#END
