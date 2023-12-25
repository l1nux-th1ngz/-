#!/bin/bash

# Directory to check for new software
dir="$HOME/.config/my_software"

# Check each file in the directory
for file in "$dir"/*; do
    # If the file is an install script, run it
    if [[ $file == *.sh ]]; then
        chmod +x "$file"
        "$file"
    # If the file is a Debian package, install it
    elif [[ $file == *.deb ]]; then
        sudo dpkg -i "$file"
    # Add more conditions here for other types of software
    fi
done
