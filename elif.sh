#!/bin/bash
#PURPOSE: If elese statement 
#VERSION: 1.0
#CREATED DATE: Thu May 5 04:10:22 PDT 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START

echo "Please enter your Maths Marks:"
read -r m
echo "Please enter your Physics Marks:"
read -r p
echo "Please enter your English Marks:"
read -r e

if [ $m -gt 35 -a $p -gt 35 -a $e -gt 35 ]; then
total=`expr $m + $p + $e`
avg=`expr $total / 3`

echo "Total marks= $total"
echo "Avg marks= $avg"


	if [ $avg -gt 75 ]; then
	echo " Destingstion "
	elif [ $avg -ge 60 -a $avg -le 75 ]; then 
	echo " First class "
	elif [ $avg -ge 35 -a $avg  -le 60 ]; then
	echo " second class "
	fi 
else 

echo "Sorry you are failed"
fi



#END
