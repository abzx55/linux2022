#!/bin/bash
# Display current username
user=$(whoami)

# Display hostname
hostname=$(hostname)

# Print working directory - Display current directory
directory=$(pwd)

# Display information about username hostname and working directory
echo "User=[$user] Host=[$hostname] Working dir=[$directory]"

# Display contents of the current directory
echo "Directory contents:"
ls
