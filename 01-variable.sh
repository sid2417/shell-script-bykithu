#!/bin/bash

# Case1 :: Just printing the conversations using echo
echo "Hi this is Kithu"

# Case2:: Printing conversation using variables

echo "------------------------------------------------------------"

# In shell script variables are shown as Capitalletters [ VARIABLE=kithu ] 
# Here declaring variables to values using equalto =
PERSON1=sid
PERSON2=kith

echo "$PERSON1:: Hi Kith, How are you..."
echo "$PERSON2:: I am good Sid, what about you..."
echo "$PERSON1:: yeah, I am great, how's your Health..."
echo "$PERSON2:: Totally fine Sid, Now I am feeling great"


echo "------------------------------------------------------------"

PERSON1=sid
PERSON2=kith

echo "$PERSON1:: Hi $PERSON2, How are you..."
echo "$PERSON2:: I am good $PERSON1, what about you..."
echo "$PERSON1:: yeah, I am great $PERSON2, how's your Health..."
echo "$PERSON2:: Totally fine $PERSON1, Now I am feeling great"

echo "------------------------------------------------------------"

# Case3:: Passing values to variables through arguments

VARIABLE1=$1
VARIABLE2=$2

echo "$1: Hi $2, hows your life is going"
echo "$2: hey $1, my life is going very good and Iam doing Job also"
echo "$1: ohh, that sounds good $2"
echo "$2: and what about you $1"
echo "$1: yeah, going good, iam working in MNC $2"
echo "$2: That's awesome really $1"