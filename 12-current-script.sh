#!/bin/bash

COURSE="DevOps from Current Script"

echo "Before calling other script, course: $COURSE"
echo "Process ID of current shell script: $$"

# ./13-other-script.sh

source ./13-other-script.sh

echo "After calling other script, course: $COURSE"


# In two method while calling other scripts we required execution permissions of those other script files

# 1st method::
# ./13-other-script.sh (Calling other script)(variables are not changed and PID's different)
# ( calling directly without using source two scripts are independent that not affect on each other it simply new shell will be created )


# Before calling other script, course: DevOps from Current Script
# Process ID of current shell script: 1432
# Variable value from Other script: DevOps from Other Script
# Process ID of other script: 1433
# After calling other script, course: DevOps from Current Script


# 2nd Method::
# source ./13-other-script.sh (Calling other script with source)( variable will be override and PID's are same )
# ( calling other script using source, in the current script variable will be override from the other script )

# Before calling other script, course: DevOps from Current Script
# Process ID of current shell script: 1474
# Variable value from Other script: DevOps from Other Script
# Process ID of other script: 1474
# After calling other script, course: DevOps from Other Script


