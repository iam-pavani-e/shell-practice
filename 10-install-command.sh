#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "Error: Please run this script wih root access"
    exit 1 #give other than 0 (upto 127)
else
    echo "You are running with root access"
fi

dnf install mysql -y


