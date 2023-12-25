#!/bin/bash

# Update the package database
sudo pacman -Sy

# Check for missing dependencies
deps=$(pacman -Qdtq)

# If there are missing dependencies
if [ -n "$deps" ]; then
    echo "Missing dependencies found: $deps"
    echo "Installing missing dependencies..."

    # Install missing dependencies
    for dep in $deps; do
        yay -S --needed "$dep"
    done

    echo "All missing dependencies have been installed."
else
    echo "No missing dependencies found."
fi
