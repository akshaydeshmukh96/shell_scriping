#!/bin/bash
#PURPOSE: table used by while loop 
#VERSION: 1.0
#CREATED DATE: Thu May 5 04:56:38 PDT 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START


echo " Enter which number of table you want? "
read -r c
i=1


while [ $i -le 10 ]

do 
b=`expr $c \* $i`
echo " $c * $i = $b "

i=`expr $i + 1` 


done




#END
#!/bin/bash
#PURPOSE: 
#VERSION: 
#CREATED DATE: Thu May 5 08:57:42 PDT 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START
#END
