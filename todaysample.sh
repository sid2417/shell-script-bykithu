#!/bin/bash

### now we are calling the other scripts

VARIABLE=today

echo "before calling the script name is today :: $VARIABLE"
echo "this is pid of today script :: $$ "

./tomorrowsample.sh

echo "after calling the tomorrow script the variable of today :: $VARIABLE"
echo "after calling the tomorrow script the pid of today :: $$"



# echo "This is   TOMORROW script :: $VARIABLE "
# echo "this is pid of TOMORROW script :: $$"

# before calling the is a TOmorrow script TOday
# this is value of pid 1573
# This is Tomorrow Tomorrow
# this is pid of :: 1574
# after calling the Tomorrow script TOday
# this is pid of after calling :: 1573
