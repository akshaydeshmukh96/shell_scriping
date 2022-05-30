#!/bin/bash
#PURPOSE: compound interest
#VERSION: 1.0
#CREATED DATE: Thu May 5 04:10:22 PDT 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START

read -p "initial amount: " a
read -p "interest rate per month in percentage:" i 
read -p "Total Duration in Months: " m 
b=`expr $a / 100 | bc -l`
c=`expr $b \* $i | bc -l`
d=`expr $c + $a  | bc -l`

echo " Total Amount after interest of month 1 is = $d" 

months=1
n=1
while [ $months -lt $m ]
do 
NA=$d                        #new amount enter here 

months=`expr $months + 1`
n=`expr $n + 1`

b=`expr $NA / 100 | bc -l`
c=`expr $b \* $i  | bc -l`
d=`expr $c + $NA  | bc -l` 
#e=`expr $d + $NA | bc -l`
echo "Total Amount after interest of month $n is = $d"

done
