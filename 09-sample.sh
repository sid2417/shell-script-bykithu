#!/bin/bash

## ***********Now we are installing the Nginx ********

R=\e[31m
G=\e[32m
Y=\e[33m
N=\e[0m

TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$($0 | cut -d "." -f1)
LOGFILE=/tmp/SCRIPTNAME_TIMESTAMP

# &>>LOGFILE

USER=$(id -u)
if [ $USER -ne 0 ]
then
    echo " please provide the root access to the user ...."
    exit 3
else
    echo " user already have root access ... "
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 installation was failed"
        exit 2
    else
        echo "$2 installed successfully"
    fi
}


dnf list installed nginx
if [ $? -ne 0 ]
then 
    dnf install nginx -y
    VALIDATE $? "the nginx is :: "
else
    echo " The current package nginx is already installed.. "
fi




