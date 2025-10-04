#!/bin/bash

VARIABLE=current

echo "this is current script :: $VARIABLE"

echo "this is pid of current :: $$ "

./other.sh

echo "after calling current script :: $VARIABLE"

echo "after calling pid of current :: $$ "