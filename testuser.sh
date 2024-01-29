#!/bin/bash

# Prompt the user to enter the username
read -p "Enter the user you want to test: " user
echo $user

# Use grep to search for the user in /etc/passwd
grep $user /etc/passwd > /dev/null
status=$?

# Check the exit status and display the appropriate message
if [ $status -eq 0 ]; then
            echo "$user exists."
    else
            echo "$user does not exist."
fi
