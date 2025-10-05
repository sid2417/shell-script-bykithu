#!/bin/bash


THRESHOLD_LIMIT=5
CURRENT_LIMIT=$(df -hT | grep xfs | awk -F " " '{print $6F}' | cut -d "%" -f1)
MESSAGE=""
FOLDER_NAME=$(df -hT | grep xfs | awk -F " " '{print $NF}')




while IFS= read -r line
do 
    if [ $CURRENT_LIMIT -ge $THRESHOLD_LIMIT ]
    then
        MESSAGE+="your current $FOLDER_NAME limit $CURRENT_LIMIT is exceeded to threshold limit $THRESHOLD_LIMIT \n"
        # here + is for append the result to the previous result
        # -e is enabling the special character like new line \n
        # echo "your current $FOLDER_NAME limit $CURRENT_LIMIT is exceeded to threshold limit $THRESHOLD_LIMIT"
    else
        echo "your current $FOLDER_NAME limit $CURRENT_LIMIT is with in the limit..."
    fi
        echo "deleting folder :: $line"
        #rm -r $line
done <<< $FOLDER_NAME


echo -e "Alert Message: $MESSAGE"


echo "$MESSAGE" | mail -s "Disk Usage Alert" siddhartha.fresher@gmail.com

# echo "body" | mail -s "subject" to-address


# df -hT | grep xfs | awk -F " " '{print $NF}'
# /


# df -hT | grep xfs | awk -F " " '{print $6F}' | cut -d "%" -f1
# 20