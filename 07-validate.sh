#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERNAME=$(id -u)
if [ $USERNAME -eq 0 ]
then   
    echo "user having root access.."
else
    echo "please provide root access to the user"
    exit 3
fi


