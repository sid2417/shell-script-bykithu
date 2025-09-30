#!/bin/bash

# Now we are hiding the password using ( -s )

echo "Plese enter your username"

read -s USERNAME

echo "Please enter your password"

read -s PASSWORD


echo "Printing hidden values :: username is :: $USERNAME and password is :: $PASSWORD"
