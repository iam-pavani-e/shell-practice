#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "Error: Please run this script wih root access"
    exit 1 #give other than 0 (upto 127)
else
    echo "You are running with root access"
fi

VALIDATE() {
    if [ $1 -eq 0 ]
    then
        echo "intalling $2 is success"
    else
        echo "installing $2 is failure"
        exit 1
    fi
}
dnf list installed mysql -y

if [ $? -ne 0 ]
then 
    echo " mysql is not installed ... going to install"
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo "mysql is already installed"

fi

dnf list installed python3 -y

if [ $? -ne 0 ]
then 
    echo " python3 is not installed ... going to install"
    dnf install python3 -y
    VALIDATE $? "python3"
    
else
    echo "python3 is already installed"

fi

dnf list installed nginx -y 

if [ $? -ne 0 ]
then 
    echo " nginx is not installed ... going to install"
    dnf install nginx -y
    VALIDATE $? "nginx"    
else
    echo "nginx is already installed"

fi

