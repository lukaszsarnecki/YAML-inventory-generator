#!/bin/bash
# =============================================================================
# Script: create_inventory_en.sh
# Description: This script dynamically creates an inventory.yml file for Ansible.
#              The user is prompted to enter the number of hosts and then to provide:
#                - Host name
#                - Host IP address
#                - Username (ansible_user)
#
# Usage:
#   1. Grant execute permissions: chmod +x create_inventory_en.sh
#   2. Run the script: ./create_inventory_en.sh
#
# Author: Lukasz Sarnecki
# Date: 25.03.2025
# =============================================================================

echo "Welcome to the Ansible inventory.yml creator (English version)"
echo "-----------------------------------------------------"

# Prompt for the number of hosts to add
read -p "How many hosts would you like to add? " host_count

# Check if the inventory.yml file already exists and ask for overwrite permission
if [ -f "inventory.yml" ]; then
    read -p "The file inventory.yml already exists. Do you want to overwrite it? (y/n): " choice
    if [ "$choice" != "y" ]; then
        echo "Operation cancelled. Your current file remains unchanged."
        exit 0
    fi
fi

# Create the basic YAML structure for the inventory file
echo "--- #Inventory YML" >> inventory.yml
echo "all:" >> inventory.yml
echo "  hosts:" >> inventory.yml

# Loop to gather host information
for (( i=1; i<=host_count; i++ ))
do
    echo "Enter the details for host number $i:"
    read -p "  Host name: " host_name
    read -p "  Host IP address: " host_ip
    read -p "  Username: " host_user

    # Append host details to the inventory.yml file
    echo "    $host_name:" >> inventory.yml
    echo "      ansible_user: $host_user" >> inventory.yml
    echo "      ansible_host: $host_ip" >> inventory.yml
    echo "" >> inventory.yml
done

echo "The inventory.yml file has been successfully created."
