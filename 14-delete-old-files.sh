#!/bin/bash

# Deleting the old files

# Steps:
# First find out the which type of files we need to delete and how many days back 
# Before delete print the files to know those files are correct or not

# To create old files ( touch -d 20240405 filename.log  )
# To find that particular file is exist or not ( find . -name "*.sh" -mtime +14 )


# Q: Delete the old files in /tmp directory with .log format morethan 30 days older

SOURCE_PATH="/tmp/"

if [ -d $SOURCE_PATH ]
then
    echo "your mentioned directory will be existed.."
else
    echo "you mentioned the path is wrong...Please check your path"
    exit 4
fi


DELETE_FILES=$(find $SOURCE_PATH -name "*.log" -mtime +30)

while IFS read -r checkline
do 
    echo "Deleting files : $checkline"
    #rm -r $checkline
done <<< $DELETE_FILES