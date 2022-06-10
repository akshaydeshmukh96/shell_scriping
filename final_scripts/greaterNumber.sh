#!/bin/bash

a=200
b=400
c=237


if [[ $a -gt $b && $b -gt $c ]]
then
echo "$a is a greater value than $b & $c "
elif [ $b -gt $c ]
then
echo "$b is a greater value"
else 
echo "$c is a greater value"

fi

