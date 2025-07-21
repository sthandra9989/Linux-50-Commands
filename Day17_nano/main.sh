#!/bin/bash

# 📝 Demonstration of the Linux nano text editor

echo "\n✨ The 'nano' is a simple, user-friendly text editor in Linux!"
echo "Let's explore its features and commands!\n"

# 1. Basic Usage
echo "1️⃣ Open or Create a File:"
echo "   nano filename.txt"
echo "---"
echo "(Opens filename.txt in nano. Creates it if it doesn't exist.)\n"

# 2. Open with Line Numbers
echo "2️⃣ Open File with Line Numbers:"
echo "   nano -l filename.txt"
echo "   # OR"
echo "   nano --linenumbers filename.txt"
echo "---"
echo "(Shows line numbers while editing.)\n"

# 3. Open in Read-Only Mode
echo "3️⃣ Open File in Read-Only Mode:"
echo "   nano -v filename.txt"
echo "   # OR"
echo "   nano --view filename.txt"
echo "---"
echo "(Opens file for viewing only, cannot edit.)\n"

# 4. Open with Mouse Support
echo "4️⃣ Open with Mouse Support:"
echo "   nano -m filename.txt"
echo "---"
echo "(Enables mouse clicking for cursor positioning.)\n"

# 5. Open with Backup
echo "5️⃣ Create Backup of Existing File:"
echo "   nano -B filename.txt"
echo "---"
echo "(Creates backup with ~ suffix before editing.)\n"

# 6. Multiple File Buffers
echo "6️⃣ Open Multiple Files:"
echo "   nano file1.txt file2.txt file3.txt"
echo "---"
echo "(Switch between files with Alt+> and Alt+<)\n"

# 7. Open at Specific Line and Column
echo "7️⃣ Open at Specific Position:"
echo "   nano +10,5 filename.txt"
echo "---"
echo "(Opens file at line 10, column 5)\n"

echo "🔥 COMMON NANO SHORTCUTS:"
echo "• Ctrl + O: Save file"
echo "• Ctrl + X: Exit nano"
echo "• Ctrl + G: Get help"
echo "• Ctrl + K: Cut line"
echo "• Ctrl + U: Paste line"
echo "• Ctrl + W: Search text"
echo "• Ctrl + \\: Search and replace"
echo "• Alt + U: Undo"
echo "• Alt + E: Redo"
echo "• Ctrl + _: Go to line number"
echo "• Ctrl + C: Show cursor position"
echo "• Ctrl + J: Justify paragraph"
echo "• Alt + #: Show line numbers\n"

echo "📌 PRACTICAL EXAMPLES:"
echo "1. Create and edit a new file:"
echo "   nano newfile.txt"
echo ""
echo "2. Edit system configuration (with sudo):"
echo "   sudo nano /etc/hostname"
echo ""
echo "3. Create backup before editing:"
echo "   nano -B important.conf"
echo ""
echo "4. View large file with line numbers:"
echo "   nano -l -v largefile.log"
echo ""
echo "5. Edit multiple files:"
echo "   nano *.txt"
echo "   (Use Alt+> to switch between files)\n"

echo "✨ Try these commands to explore nano! For more details, see the readme.md in this folder. Happy editing! 📝" 