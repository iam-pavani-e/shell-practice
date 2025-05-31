#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "Error: Please run this script wih root access"
    exit 1 #give other than 0 (upto 127)
else
    echo "You are running with root access"
fi

dnf list installed mysql

#check already installed or not. if installed $? is 0,then
#if not installed $? is not 0, expression is true then going to install
if [ $? -ne 0 ]
then 
    echo " mysql is not installed ... going to install"
    dnf install mysql -y
    if [ $? -eq 0 ]
    then
        echo "intalling mysql is success"
    else
        echo "installing mysql is failure"
        exit 1
    fi
else
    echo "mysql is already installed"

fi

#dnf install mysql -y


#if [ $? -eq 0 ]
#then
#   echo "intalling mysql is success"
#else
#    echo "installing mysql is failure"
#    exit 1
#fi