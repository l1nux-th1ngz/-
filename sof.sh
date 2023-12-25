#!/bin/bash

# Directory to check for new software
dir="$HOME/.config/my_software"

# Check each file in the directory
for file in "$dir"/*; do
    # If the file is a text file containing package names, install the packages
    if [[ $file == *.txt ]]; then
        while IFS= read -r package
        do
            yay -S "$package"
        done < "$file"
    fi
done
