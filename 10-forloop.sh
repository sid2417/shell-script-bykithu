#!/bin/bash

# ******* Installing multiple packages using forloop *********

## nginx yara.x86_64 yasm.x86_64 wlcs.x86_64 tftp.x86_64 zvbi.x86_64

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"




USER=$(id -u)
if [ $USER -eq 0 ]
then 
    echo -e $Y"user already have root access..."$N
else
    echo -e $R"Please provide the root access to the user ...."$N
    exit 3
fi



VALIDATE(){
    if [ $1 -ne 0 ]
    then    
        echo -e $R "$2 failure..."$N
        exit 3
    else
        echo -e $G "$2 success..."$N
    fi
}


for packages in $@
do 
    echo -e $G "The passing arguments are :: $@" $N
    yum list installed $packages
    if [ $? -ne 0 ] 
    then
        dnf install $packages
        VALIDATE $? "your mentioned $packages is :: "
    else
        echo -e $Y" The mentioned $packages is already installed.."$N
    fi
done


echo -e $G "all mentioned packages are installed successfully ......" $N