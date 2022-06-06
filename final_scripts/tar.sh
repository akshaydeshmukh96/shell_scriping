#!/bin/bash
# creating Tar files by using scripts


echo " "
echo "****************************************************************"
echo 
echo " What you want to do: list / gzip / unzip  "

echo "****************************************************************"
read variable


echo  "****************************************************************"
case $variable in 
gzip ) 

	read -p "Please Enter path of file which you want to Tar / Untar : " a
	
	read -p "please Enter NewName : " b
	tar cvfz $b.tgz $a   >>/dev/null
		if [ $? -eq 0 ]
		then 	
			echo "Successfully DOne"
		else 
			echo "some Error"
		fi

	;;

list )
	read -p "Enter Tar-file name which you want to show in list format:" c
	tar tfv $c
	;;
unzip )
	
	read -p "Enter file name which you want to gzip : " d
	read -p "Enter untar Path :" e
	tar xfv $d -C $e  ;;
* ) 
	echo "wrong input " ;;
 
esac
