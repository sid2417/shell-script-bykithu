#!/bin/bash

echo "Installing packages using for loop"

for packages in $@
do
    echo $@
    echo "These are list of Packages you mentioned in the command line :: $@"
done