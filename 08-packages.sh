#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo -e $Y "Installing packages using for loop" $N
echo -e $Y "Number of vaiables in arguments :: $#" $N
echo -e $G "All vaiables in arguments $@" $N

USER=$(id -u)
if [ $USER -ne 0 ]
then 
    echo -e $R "Plese provide root access to the user.." $N
    exit 2
else
    echo -e $Y"user alredy having root access.."$N
fi


VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo -e $R" $2 is FAILED "$N
    else
        echo -e $G" $2 is SUCCESS "$N
    fi
}


for packages in $@
do
    echo $packages
    dnf list installed $packages 
    if [ $? -ne 0 ]  
    then
        dnf install $packages -y
        VALIDATE $? "current installing package $packages :: "
    else
        echo -e $Y"The mentioned $packages is already Installed..."$N
    fi
done

