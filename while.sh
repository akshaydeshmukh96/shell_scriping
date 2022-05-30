#!/bin/bash
#PURPOSE:tables 
#VERSION: 1.0
#CREATED DATE: Thu May 5 08:57:58 PDT 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START

echo "Enter Number: "
read -r c
i=1

while [ $i -le 10 ]
do 
b=`expr $c \* $i`
echo "$c * $i = $b "
((i++))

done




#END#