#!/bin/bash

# 📝 Demonstration of the Linux cp command

echo "\n📄 The 'cp' command is used to copy files and directories in Linux!"
echo "Let's see some practical examples!\n"

# 1. Copy a file to another directory
echo "1️⃣ Copy a file to another directory:"b
echo "   cp file.txt /path/to/destination/"
echo "---"
echo "(This copies file.txt to the specified directory.)\n"

# 2. Copy and rename a file
echo "2️⃣ Copy and rename a file:"
echo "   cp oldname.txt newname.txt"
echo "---"
echo "(This creates a copy of oldname.txt named newname.txt.)\n"

# 3. Copy multiple files
echo "3️⃣ Copy multiple files:"
echo "   cp file1.txt file2.txt /path/to/destination/"
echo "---"
echo "(This copies both files to the destination directory.)\n"

# 4. Copy a directory recursively
echo "4️⃣ Copy a directory recursively:"
echo "   cp -r myfolder/ /path/to/destination/"
echo "---"
echo "(This copies the entire myfolder directory and its contents.)\n"

# 5. Copy with prompt before overwrite
echo "5️⃣ Copy with prompt before overwrite (interactive):"
echo "   cp -i file.txt /path/to/destination/"
echo "---"
echo "(This will ask before overwriting an existing file.)\n"

echo "✨ Try these commands on your Linux system to explore 'cp'! For more, see the readme.md in this folder. Happy copying! 📄" 