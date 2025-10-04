#!/bin/bash

### now we are calling the other scripts

VARIABLE=CURRENT

echo "before calling the is a current script"
echo "this is value of pid $$ "

./tomorrowsample.sh

echo "after calling the Tomorrow script"
echo "this is pid of after calling :: $$"

