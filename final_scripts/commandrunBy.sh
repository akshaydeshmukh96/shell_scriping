#!/bin/bash
#this scripts is used to check any perticular cammand is run by which user 

echo -p "which command you want to search : " a

os=$( ls /home/ )
for variable in $os
do 
cat /home/$variable/.bash_history  |tail -30 | grep -e $a     2> /dev/null  1> /tmp/akshay





