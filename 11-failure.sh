#!/bin/bash

# set -e

# failure(){
#     echo "Failed at $1: $2"
# }

# trap 'failure ${LINENO} "$BASH_COMMAND"' ERR



# No match for argument: mysfaffql
# Error: Unable to find a match: mysfaffql
# Failed at 21: dnf install mysfaffql -y



# set -e

# failure(){
#     echo "$1 $2"
# #here $1 is line number and $2 is command
# }

# trap "failure find bash" ERR


# No match for argument: mysfaffql
# Error: Unable to find a match: mysfaffql
# find bash



# set -e
# failure(){
#     echo "$1 : $2"
# }
# trap 'failure' ERR


# No match for argument: mysfaffql
# Error: Unable to find a match: mysfaffql
#  :


# set -e
# failure(){
#     echo ""
# }
# trap 'failure' ERR


# No match for argument: mysfaffql
# Error: Unable to find a match: mysfaffql
trap 'failure linenumber commandname' ERR

set -e
failure () {
    echo "$1 : $2"
}





USERID=$(id -u) #ERR

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi



dnf install mysfaffql -y
dnf install git -y

echo "is script proceeding?"


