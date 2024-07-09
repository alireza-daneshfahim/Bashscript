#!/bin/bash

# Set server IP, username, and password
read -p "Enter your IP : " SERVER_IP
read -p "your_username : " USERNAME
read -p"your_password : " PASSWORD

# Check if server is pingable
if ping -c 1 "$SERVER_IP" &> /dev/null; then
    # Server is accessible, send /etc/passwd to /home/user
    `scp "$USERNAME@$SERVER_IP:/etc/passwd" "/home/$USERNAME/"`
    echo "File /etc/passwd copied successfully."
else
    echo "Server is not accessible."
fi

