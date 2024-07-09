#!/bin/bash

# Initialize variables
COUNT=1
SUM=0
LARGEST=
SMALLEST=

# Read 20 NUMbers from input
while [ $COUNT -lt 20 ]; do
    read -p "Enter $COUNT a number: " NUM
    SUM=$((SUM + NUM))

    # Compare with LARGEST and SMALLEST
    if [ -z "$LARGEST" ] || [ "$NUM" -gt "$LARGEST" ]; then
        LARGEST=$NUM
    fi
    if [ -z "$SMALLEST" ] || [ "$NUM" -lt "$SMALLEST" ]; then
        SMALLEST=$NUM
    fi

    COUNT=$((COUNT + 1))
done

# Calculate AVERAGE
AVERAGE=$(bc <<< "scale=2; $SUM / 20")

echo "Largest NUMber: $LARGEST"
echo "Smallest NUMber: $SMALLEST"
echo "Average: $AVERAGE"
