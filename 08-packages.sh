#!/bin/bash

echo "Installing packages using for loop"
echo "Number of vaiables in arguments $#"
echo "All vaiables in arguments $@"

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

# for packages in $@
# do
#     echo $packages
#     dnf list installed $packages
#     if [ $? -ne 0 ]
#     then
#         dnf install $packages -y
#     else    
#         echo "$packages is already installed in your server"
#     fi
# done