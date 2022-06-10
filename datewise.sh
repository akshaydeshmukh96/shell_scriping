#!/bin/bash
#PURPOSE: date wise  backup from server 2.12 to 2.14 
#VERSION: 
#CREATED DATE: Thu May 26 18:38:52 IST 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START

password="admin@1234"
username="voitekk"
Ip="192.168.2.14"
sshpass -p "$password" scp /scripts/datewise $username@$Ip:/tmp



#END
