#!/bin/bash
#PURPOSE: add users by using scrips  
#VERSION: 
#CREATED DATE: Mon May 23 17:29:38 IST 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START

echo "****************************USERADD*******************************"
echo "Enter '1' for single user add "
echo "Enter '2' for multiple useradd from file"
echo "Enter '3' for multiple useradd in single line seperated by space."
echo "******************************************************************"


read variable

case $variable in
1) 	read -p "please enter username: " a
	useradd $a >> /dev/null
	echo 123456 | passwd --stdin $a >> /dev/null
	usermod -c "Joining date of $a is `date +%d/%m/%y `" $a  >> /dev/null	
	echo " user added successfully, Default password is '123456' "
	
;;


2)	read -p " Enter filename: " i
	
	while read var 
                do
                        useradd $var >> /dev/null
                        echo 123456 | passwd --stdin $var >> /dev/null
			usermod -c "Joining date of $var is `date +%d/%m/%y `" $var >> /dev/null
                                if [ $? -eq 0 ]
                                then
                                echo "$var user added successfully, Default password is '123456' "
				
                                fi
                done < $i
;;
3) 	read -p "please enter names : " c
	for add in $c
		do 	
			useradd $add >> /dev/null
			echo 123456 | passwd --stdin $add  >> /dev/null
			usermod -c "Joining date of $add is `date +%d/%m/%y `" $add >> /dev/null

				if [ $? -le 0 ]
				then
				echo " $add user added successfully, Default password is '123456' "
				fi
		done
;;

*) echo "Wrong INPUT"

;;
esac




#END
