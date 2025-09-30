#!/bin/bash

VARIABLE1=$1
VARIABLE2=$2

echo "Total varaiables list :: $@"

echo "you need total how many variables used in this script :: $#"

echo "your hostname :: $HOSTNAME"

echo "your current directory :: $PWD"

echo "which user using this :: $USER"

echo "your home directory :: $HOME"

echo "name of the currently running script :: $0"

echo "process instance id of current file or script :: $$ "

#sleep 20
sleep 60 &  # this & is going background
echo "process instance id of last backgroup of command :: $!"

