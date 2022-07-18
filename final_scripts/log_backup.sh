#!/bin/bash
#backup logs 

echo "******************************LOG_BACKUP**********************************"
Backup='/var/log/'
TO='/backup'

tar cvfz $TO/log_`date +%y-%m-%d`.tgz $Backup   >> /dev/null
if [ $? -eq 0 ]
then 
	echo -e "\033[32mBackup successfully done \033[0m "
else 
	echo "\033[33mBackup failed \033[0m"
fi

