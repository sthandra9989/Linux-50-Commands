#!/bin/bash

# Basic whoami command demonstration
echo "1. Basic whoami command:"
echo "Current user: $(whoami)"
echo "-------------------"

# Using whoami with id command to show more user information
echo "2. Combining whoami with id command:"
echo "User ID information for $(whoami):"
id $(whoami)
echo "-------------------"

# Demonstrating whoami in a practical example
echo "3. Practical example - checking permissions:"
echo "Checking if current user ($(whoami)) has write permission to /tmp:"
if [ -w "/tmp" ]; then
    echo "User $(whoami) has write permission to /tmp"
else
    echo "User $(whoami) does not have write permission to /tmp"
fi
echo "-------------------"

# Show current user's groups
echo "4. Groups for current user:"
echo "Groups for $(whoami):"
groups $(whoami)
echo "-------------------"

# Compare effective and real user IDs
echo "5. Effective vs Real User:"
echo "Effective User ID: $EUID"
echo "Real User ID: $UID" 