#!/bin/bash

# check file is writable or not if yes then enter data into the file


echo -e "Enter file path:\c  " 
read filename

if [ -f $filename ]
then 
	if  [ -w $filename ]
	then 
	echo "type some data. To quite press Ctrl+d "
	cat >> $filename
	else 
	echo "The file do not have write permissions"
	fi
else
	echo "$filename not exist"
fi
