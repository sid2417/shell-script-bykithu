#!/bin/bash

echo "Installing packages using for loop"

for packages in $@
do
    echo $@
    dnf list installed $1
    
    
done