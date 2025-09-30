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


VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo " $2 is FAILED "
    else
        echo " $2 is SUCCESS "
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
        echo "The mentioned $packages is already Installed..."
    fi
done

