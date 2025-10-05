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
        # echo "your current $FOLDER_NAME limit $CURRENT_LIMIT is exceeded to threshold limit $THRESHOLD_LIMIT"
    else
        echo "your current $FOLDER_NAME limit $CURRENT_LIMIT is with in the limit..."
    fi
        echo "deleting folder :: $line"
        #rm -r $line
done <<< $FOLDER_NAME



# df -hT | grep xfs | awk -F " " '{print $NF}'
# /


# df -hT | grep xfs | awk -F " " '{print $6F}' | cut -d "%" -f1
# 20