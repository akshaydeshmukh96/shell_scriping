#!/bin/bash
#PURPOSE: ping tests
#VERSION: 
#CREATED DATE: Sun May 22 10:52:23 IST 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START

for i in 192.168.0.{1..20}

do
	ping -c 2 $i >> /dev/null     #Redirect output to the null file 

 
		if [ $? -le 0 ]	      #last run command status is equal to  zero
			then 
				echo "$i is UP"            
			else 
				echo "$i is DOWN"
		fi

done

#END
