#!/bin/bash

echo "Installing packages using for loop"
echo "Number of vaiables in arguments $#"
echo "All vaiables in arguments $@"

USER=$(id -u)
if [ $USER -ne 0 ]
then 
    echo "Plese provide root access to the user.."
    exit 2
else
    echo "user alredy having root access.."
fi


for packages in $@
do
    echo $packages
    dnf list installed $packages 
    if [ $? -ne 0 ]  
    then
        echo "dnf install $packages -y"
        echo "The mentioned $packages is Failed..."
    else
        echo "The mentioned $packages is already Installed..."
    fi
done

