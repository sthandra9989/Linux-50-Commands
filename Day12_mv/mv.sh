#!/bin/bash

# 📝 Demonstration of the Linux mv command

echo "\n🚚 The 'mv' command is used to move or rename files and directories in Linux!"
echo "Let's see some practical examples!\n"

# 1. Move a file to another directory
echo "1️⃣ Move a file to another directory:"
echo "   mv file.txt /path/to/destination/"
echo "---"
echo "(This moves file.txt to the specified directory.)\n"

# 2. Rename a file
echo "2️⃣ Rename a file:"
echo "   mv oldname.txt newname.txt"
echo "---"
echo "(This renames oldname.txt to newname.txt.)\n"

# 3. Move and overwrite with prompt
echo "3️⃣ Move with prompt before overwrite (interactive):"
echo "   mv -i file.txt /path/to/destination/"
echo "---"
echo "(This will ask before overwriting an existing file.)\n"

# 4. Move multiple files
echo "4️⃣ Move multiple files:"
echo "   mv file1.txt file2.txt /path/to/destination/"
echo "---"
echo "(This moves both files to the destination directory.)\n"

echo "✨ Try these commands on your Linux system to explore 'mv'! For more, see the readme.md in this folder. Happy moving! 🚚"

# ---
# 💡 Tip: After learning 'mv', check out the 'cp' command to learn how to copy files and directories!
# See the next lesson for a cp demonstration. 