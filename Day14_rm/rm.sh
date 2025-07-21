#!/bin/bash

# 🗑️ Demonstration of the Linux rm command

echo "\n❗ The 'rm' command is used to remove files and directories in Linux!"
echo "⚠️  WARNING: Be very careful with rm - deleted files cannot be easily recovered!"
echo "Let's see some practical examples with safety measures!\n"

# 1. Remove a single file
echo "1️⃣ Remove a single file:"
echo "   rm file.txt"
echo "---"
echo "(This permanently deletes file.txt.)\n"

# 2. Remove with confirmation prompt
echo "2️⃣ Remove with confirmation (interactive):"
echo "   rm -i file.txt"
echo "---"
echo "(This asks for confirmation before deleting - recommended for safety!)\n"

# 3. Remove multiple files
echo "3️⃣ Remove multiple files:"
echo "   rm file1.txt file2.txt file3.txt"
echo "---"
echo "(This removes all specified files.)\n"

# 4. Remove an empty directory
echo "4️⃣ Remove an empty directory:"
echo "   rmdir empty_directory/"
echo "   # OR"
echo "   rm -d empty_directory/"
echo "---"
echo "(Both commands remove an empty directory.)\n"

# 5. Remove a directory and its contents recursively
echo "5️⃣ Remove a directory recursively:"
echo "   rm -r directory/"
echo "---"
echo "(This removes the directory and everything inside it.)\n"

# 6. Remove recursively with confirmation
echo "6️⃣ Remove recursively with confirmation:"
echo "   rm -ri directory/"
echo "---"
echo "(This asks for confirmation for each file - safest for directories!)\n"

# 7. Force removal (be very careful!)
echo "7️⃣ Force removal (use with extreme caution):"
echo "   rm -f file.txt"
echo "---"
echo "(This removes without confirmation, even write-protected files.)\n"

echo "⚠️  IMPORTANT SAFETY TIPS:"
echo "• Always double-check the path/filename before using rm"
echo "• Use rm -i or rm -ri for safety (especially when learning)"
echo "• Never use rm -rf / or rm -rf * in the root directory"
echo "• Consider using trash-cli instead of rm for safer deletions"
echo "• Make backups of important files before using rm\n"

echo "✨ Try these commands carefully on your Linux system! For more details, see the readme.md in this folder. Happy (and safe) removing! 🗑️" 