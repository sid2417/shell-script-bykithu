#!/bin/bash

### now we are calling the other scripts

VARIABLE=TOday

echo "before calling the is a TOmorrow script $VARIABLE"
echo "this is value of pid $$ "

./tomorrowsample.sh

echo "after calling the Tomorrow script $VARIABLE"
echo "this is pid of after calling :: $$"

