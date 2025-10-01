#!/bin/bash

## ***********Now we are installing the Nginx ********

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME_$TIMESTAMP


# &>>$LOGFILE

USER=$(id -u)
if [ $USER -ne 0 ]
then
    echo -e $R" please provide the root access to the user ...."$N
    exit 3
else
    echo -e $G" user already have root access ... "$N
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e $R"$2 installation was failed"$N
        exit 2
    else
        echo -e $G"$2 installed successfully"$N
    fi
}


dnf list installed nginx
if [ $? -ne 0 ]
then 
    dnf install nginx -y
    VALIDATE $? "the nginx is :: "
else
    echo -e $Y" The current package nginx is already installed.. "$N
fi




