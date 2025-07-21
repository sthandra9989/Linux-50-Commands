#!/bin/bash

# Basic echo examples
echo "1. Basic Echo Examples:"
echo "Hello, World!"
echo -n "This line has no newline"
echo " (continued on same line)"

# Working with variables
echo -e "\n2. Working with Variables:"
NAME="Linux Learner"
echo "Welcome, $NAME!"
echo "Your current directory is: $PWD"

# Using escape sequences
echo -e "\n3. Escape Sequences:"
echo -e "First line\nSecond line"
echo -e "Items:\n\tItem 1\n\tItem 2\n\tItem 3"

# Color output examples
echo -e "\n4. Colored Output:"
echo -e "\033[31mThis is red text\033[0m"
echo -e "\033[32mThis is green text\033[0m"
echo -e "\033[34mThis is blue text\033[0m"
echo -e "\033[1mThis is bold text\033[0m"

# File operations
echo -e "\n5. File Operations:"
echo "Creating a new file..."
echo "This is a test file" > test.txt
echo "Adding another line" >> test.txt
echo "Content of test.txt:"
cat test.txt

# Creating a banner
echo -e "\n6. Creating a Banner:"
echo -e "\033[1m================================\033[0m"
echo -e "\033[1m      Welcome to Echo Demo       \033[0m"
echo -e "\033[1m================================\033[0m"

# Command substitution
echo -e "\n7. Command Substitution:"
echo "Today's date is: $(date)"
echo "Number of files in current directory: $(ls | wc -l)"

# Here document example
echo -e "\n8. Here Document Example:"
echo "$(cat << EOF
This is a multi-line
text block using
here document.
EOF
)"

# Cleanup
echo -e "\n9. Cleanup:"
echo "Removing test file..."
rm test.txt
echo "Done!"

echo -e "\nEcho command demonstration completed! 🎉" 