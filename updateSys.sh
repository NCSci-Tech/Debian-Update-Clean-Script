#!/bin/bash

# Update package lists for apt
echo "Updating apt package lists..."
sudo apt update -y

# Upgrade installed packages with apt
echo "Upgrading apt packages..."
sudo apt upgrade -y

# Refresh Snap packages
echo "Refreshing Snap packages..."
sudo snap refresh

# Update the man page database
echo "Updating man pages database..."
sudo mandb

# Update the file name database (locate command)
echo "Updating file name database..."
sudo updatedb

# Clean journal logs older than 3 days
echo "Cleaning journal logs older than 3 days..."
sudo journalctl --vacuum-time=3d

# Perform autoclean to remove obsolete packages
echo "Autocleaning obsolete packages..."
sudo apt-get autoclean

# Perform autoremove to remove unused dependencies
echo "Autoremoving unused dependencies..."
sudo apt-get autoremove -y

echo "System update and maintenance complete!"
