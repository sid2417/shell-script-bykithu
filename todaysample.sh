#!/bin/bash

### now we are calling the other scripts

VARIABLE=today

echo "Before calling the script name is TODAY :: $VARIABLE"
echo "this is value of TODAY pid $$ "

./tomorrowsample.sh

echo "after calling the TOMORROW script :: $VARIABLE"
echo "this is pid of after calling TOMORROW script :: $$"

