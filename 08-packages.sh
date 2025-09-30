#!/bin/bash

echo "Installing packages using for loop"

for packages in $@
do
    echo $packages
    dnf list installed $packages   
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