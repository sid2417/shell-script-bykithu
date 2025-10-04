#!/bin/bash

### Deleting the old files


FILELIST=$(/tmp/abcd/)

DELETELIST=$(find $FILELIST -name "*.log" -mtime +14)

# DELETE_FILES=$(find $SOURCE_PATH -name "*.sh" -mtime +1)

while IFS = read -r line
do 
    echo "printing the deleting files :  $line" 
    rm -r $line
done <<< $FILELIST
