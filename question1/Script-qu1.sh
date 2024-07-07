#!/bin/bash

# Read input from the user
while true
do
    read -p "Enter your num: " NUM
    if [ -z "$NUM" ]
    then
        echo "Please enter a valid number."
    else
        break
    fi
done

# Compare the user input to 10
if [ "$NUM" -gt 10 ]
then
    echo "The number is larger than 10."
elif [ "$NUM" -eq 10 ]
then
    echo "The number is equal to 10."
else
    echo "The number is smaller than 10."
fi

