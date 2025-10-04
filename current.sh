#!/bin/bash

VARIABLE=current

echo "this is current script :: $VARIABLE"

echo "this is pid of current :: $$ "

./current.sh

echo "after calling current script :: $VARIABLE"

echo "after calling pid of current :: $$ "