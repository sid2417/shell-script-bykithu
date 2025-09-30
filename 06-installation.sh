#!/bin/bash

# using condition we install the nginx
# we checking user is having root access or not

USERNAME=$(id -u)

if [ $USERNAME -eq 0 ]
then
    echo "You are a root user"
else 
    echo "Plese provide the root access to the user"
fi


dnf install nginx -y