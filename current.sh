#!/bin/bash

VARIABLE=current

echo "this is current script :: $VARIABLE"

echo "this is pid of current :: $$ "

# ./other.sh

source ./other.sh

echo "after calling current script :: $VARIABLE"

echo "after calling pid of current :: $$ "

# this is current script :: current
# this is pid of current :: 4970
# this is other script :: other
# this is pid of other script :: 4971
# after calling current script :: current
# after calling pid of current :: 4970
