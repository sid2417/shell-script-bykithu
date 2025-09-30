#!/bin/bash

# Now we printing the values using if block
# if [ here we mention the condition ]
# then
#     echo " if condition is true printing the then block"
# else
#     echo " if condition is failes printing the else block"
# fi

#-gt, -lt, -eq, -ge, -le

NUMBER1=23
NUMBER2=5

if [ $NUMBER1 -ge $NUMBER2 ]
then 
    echo "$NUMBER1 is more than $NUMBER2"
else
    echo "$NUMBER1 is lessthan $NUMBER2"
fi


echo "Below result is through passing arguments::"

NUM1=$1
NUM2=$2

if [ $1 -le $2 ]
then 
    echo "$1 is Less than $2"
    echo "Condtion is TRUE..."
else
    echo "$1 is greater than $2"
    echo "Condtion is FALSE..."
fi

echo "$@"
echo "$#"