#!/bin/bash

# Deleting the old files

# Steps:
# First find out the which type of files we need to delete and how many days back 
# Before delete print the files to know those files are correct or not

# To create old files ( touch -d 20240405 filename.log  )
# To find that particular file is exist or not ( find . -name "*.sh" -mtime +14 )


# Q: Delete the old files in /tmp directory with .log format morethan 30 days older

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

SOURCE_PATH="/tmp/"

if [ -d $SOURCE_PATH ]
then
    echo -e $G"your mentioned directory will be existed.."$N
else
    echo -e $R"you mentioned the path is wrong...Please check your path"$N
    exit 4
fi


DELETE_FILES=$(find $SOURCE_PATH -name "*.sh" -mtime +1)

while IFS= read -r checkline
do 
    echo -e $Y"Deleting files : $checkline"$N
    rm -r $checkline
done <<< $DELETE_FILES