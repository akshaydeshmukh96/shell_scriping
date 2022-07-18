#!/bin/bash
# Finding which application or services are used swap memory


#cd /proc/
#while 
#a="cat */status  | grep -i swap | awk {'print $2'}"
#do 
 
#dd=$( ll /proc/ | grep ^d | awk {'print $9'} | wc -l )
#bb=$( echo " $dd-11" |bc )
os=$( ls /proc/ )
for variable in $os
do 
a=$(cat /proc/$variable/status  | grep -i swap | awk {'print $2'}) 
if  [ $a -eq 0 ]
then 
echo "No swap memory used by $variable" > /dev/null
elif [ -z $a ] 
then 
echo "no swap found" > /dev/null
else 
echo "Swap memory used by $variable is $a " 2> /dev/null
fi
done
