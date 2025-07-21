#!/bin/bash

# 📄 Demonstration of the Linux head command

echo "\n📜 The 'head' command is used to view the beginning of text files!"
echo "By default, it shows the first 10 lines of a file."
echo "Let's see some practical examples!\n"

# 1. View first 10 lines (default)
echo "1️⃣ View first 10 lines of a file (default):"
echo "   head file.txt"
echo "---"
echo "(Shows the first 10 lines of file.txt)\n"

# 2. View specific number of lines
echo "2️⃣ View specific number of lines:"
echo "   head -n 5 file.txt"
echo "   # OR shorter version"
echo "   head -5 file.txt"
echo "---"
echo "(Shows the first 5 lines of file.txt)\n"

# 3. View specific number of bytes
echo "3️⃣ View specific number of bytes:"
echo "   head -c 100 file.txt"
echo "---"
echo "(Shows the first 100 bytes of file.txt)\n"

# 4. View multiple files at once
echo "4️⃣ View multiple files:"
echo "   head file1.txt file2.txt"
echo "---"
echo "(Shows the first 10 lines of each file with headers)\n"

# 5. View all but last N lines
echo "5️⃣ View all but last N lines:"
echo "   head -n -5 file.txt"
echo "---"
echo "(Shows all lines except the last 5 lines)\n"

# 6. Quiet mode (no headers)
echo "6️⃣ View multiple files without headers:"
echo "   head -q file1.txt file2.txt"
echo "---"
echo "(Shows content without file headers)\n"

# 7. Verbose mode (always show headers)
echo "7️⃣ View with headers (verbose):"
echo "   head -v file.txt"
echo "---"
echo "(Always shows headers, even for single file)\n"

echo "⚡ PRACTICAL USES:"
echo "• Quick peek at log files"
echo "• View file headers or metadata"
echo "• Check file content without loading entire file"
echo "• Monitor new entries in log files"
echo "• Preview large text files\n"

echo "✨ Try these commands on your Linux system! For more details, see the readme.md in this folder. Happy heading! 📜" 