#!/bin/bash
#PURPOSE: first case statement  
#VERSION: 
#CREATED DATE: Thu May 26 16:32:55 IST 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START
echo "This is my first case statement scrip"
echo "**************************************"
echo  -e "\n\n"

echo "press 1 = for user login status "
echo "press 2= for disk status "
echo "press 3= for CPU status "
echo "press 4= for exit program "
echo -e "\n\n"
#read -p "give any number from 1 to 4==> :" i
select  i in 1 2 3 4
do 
case $i in 
1) 	echo "User login report:  "
	who
	echo " Total user login are: $(who | wc -l)"
	;;
2)	echo "Disk status"
	df -h;;
3)	echo "CPU status"
	lscpu;;
4)	echo "for exit from the program";;
*)	echo "you have entered wrong value"
		break ;;
esac
done
#END
