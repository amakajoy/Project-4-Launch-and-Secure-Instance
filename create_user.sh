#!/bin/bash

# ------------------------------------------------------
# Create a new Linux user and grant sudo privileges
# ------------------------------------------------------

# Exit immediately if a command fails
set -e

# Prompt for the username
read -p "Enter the username to create: " USERNAME

# Check if the username is empty
if [ -z "$USERNAME" ]; then
    echo "Error: Username cannot be empty."
    exit 1
fi

# Check if the user already exists
if id "$USERNAME" &>/dev/null; then
    echo "Error: User '$USERNAME' already exists."
    exit 1
fi

echo "Creating user '$USERNAME'..."
sudo adduser "$USERNAME"

echo "Adding '$USERNAME' to the sudo group..."
sudo usermod -aG sudo "$USERNAME"

echo
echo "User details:"
id "$USERNAME"

echo
echo "=========================================="
echo "User '$USERNAME' has been created successfully."
echo "'$USERNAME' has been granted sudo privileges."
echo "=========================================="
