#!/bin/bash

## instead of validate function we are using set -e

#  indstalling pakcages nginx

# VARIABLE=nginx

# set -e

# failure(){
#     echo $1:$2
# }
# trap 'failure ${LINENO} "${BASH_COMMAND)}"' ERR


# set -e
# failure(){
#     echo $1:$2
# }
# trap "'failure $lineno $2bashcommand'" ERR

# set -e
# failure () {
#     echo "$1 : $2"
# }
# trap 'failure ${LINENO} "${BASH_COMMAND}"' ERR

# USER=$(id -u)
# if [ $? -ne 0 ]
# then
#     echo "user already have root access.."
# else
#     echo "Please provide root access to user"
#     exit 4
# fi


# task1::
# dnf list installed nginx
# if [ $? -nq 0 ]
# then
#     echo "installing package name is ::$VARIABLE"
#     dnf install nginx -y
#     echo "your installaion is success.."
# else
#     echo " your installing package is already installed please skip this process.."
#     exit 5
# fi

# echo "task is successfully completed..."

# task2::

# for i in $@
# do 
#     if [ $i -nq 0 ]
#     then
#         echo "installing package name is ::$VARIABLE"
#         dnf install nginx -y
#         echo "your installaion is success.."
#     else
#         echo " your installing package is already installed please skip this process.."
#         exit 5
#     fi
# done


# # task 3::

# for i in $@
# do 
#     if [ $i -nq 0 ]
#     then
#         echo "installing package name is ::$VARIABLE"
#         dnf install nginx -y
#         VALIDATE $? "the current installation is : "
#     else
#         echo " your installing package is already installed please skip this process.."
#         exit 5
#     fi
# done

# VALIDATE(){
#     if [ $1 -ne 0 ]
#     then
#         echo "$2 failure"
#         exit 4
#     else
#         echo "$2 success"
#     fi
# }