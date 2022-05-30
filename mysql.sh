#!/bin/bash
#PURPOSE:   my sql installatin scrips 
#VERSION: 
#CREATED DATE: Wed May 25 15:49:54 IST 2022
#MODIFIED DATE: 
#AUTHOR: Akshay Deshmukh
#START

sudo yum update
sudo yum install mysql-shell
sudo yum install install mysql-apt-config
sudo yum install mysql-shell


systemctl start mysql-server

#END
