#!/bin/bash

COURSE="DevOps from Current Script"

echo "Before calling other script, course: $COURSE"
echo "Process ID of current shell script: $$"

# ./13-other-script.sh

source ./13-other-script.sh

echo "After calling other script, course: $COURSE"



# ./13-other-script.sh 
# Before calling other script, course: DevOps from Current Script
# Process ID of current shell script: 1432
# Variable value from Other script: DevOps from Other Script
# Process ID of other script: 1433
# After calling other script, course: DevOps from Current Script





