#!/bin/bash

# using condition we install the nginx
# we checking user is having root access or not

# colors must mention the first 
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERNAME=$(id -u)

if [ $USERNAME -eq 0 ]
then
    echo -e $G"You are a root user"$N
else 
    echo -e $R"Plese provide the root access to the user"$N
    exit 2
fi

echo -e $Y" Now installation process is begin..."$N

# dnf install nginxxxx -y

dnf install nginx -y

if [ $? -eq 0 ]
then 
    echo -e $G"Your installation is success...."$N
else 
    echo -e $R"Your installtion is went wrong...."$N
    exit 2
fi

echo -e $G" nginx is installed successfully...."$N