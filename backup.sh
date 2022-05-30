#!/bin/bash
#PURPOSE:backup some files 
#VERSION: 1.0
#CREATED DATE: Fri May 6 00:59:44 PDT 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START

function takebackup() {
	if [ -f $1 ]; then
	BACKUP="/home/akshay/backup_files/ "
	echo "Backing up $1 to ${BACKUP}"
	`cp -v` $1 $BACKUP
	fi

}

takebackup /home/akshay/test_files/backup*
	if [ $? -eq 0 ]; then 
	echo " Backup success"
	fi






#END
