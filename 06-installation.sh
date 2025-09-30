#!/bin/bash

# using condition we install the nginx
# we checking user is having root access or not

USERNAME=$(id -u)

if [ $USERNAME -eq 0 ]
then
    echo "You are a root user"
else 
    echo "Plese provide the root access to the user"
    exit 2
fi

echo " Now installation process is begin..."

# dnf install nginxxxx -y

dnf install nginx -y

if [ $? -eq 0 ]
then 
    echo "Your installation is success...."
else 
    echo "Your installtion is went wrong...."
    exit 2
fi

echo " nginx is installed successfully...."