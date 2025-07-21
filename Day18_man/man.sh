#!/bin/bash

# 📚 Demonstration of the Linux man command

echo "\n📖 The 'man' command is your guide to Linux commands and system manuals!"
echo "Let's explore how to use the manual pages!\n"

# 1. Basic Usage
echo "1️⃣ View Manual for a Command:"
echo "   man ls"
echo "---"
echo "(Shows the manual page for the ls command.)\n"

# 2. Search in All Manual Pages
echo "2️⃣ Search All Manuals:"
echo "   man -k search_term"
echo "   # OR"
echo "   apropos search_term"
echo "---"
echo "(Searches for 'search_term' in all manual pages.)\n"

# 3. View Specific Manual Section
echo "3️⃣ View Specific Manual Section:"
echo "   man 5 passwd"
echo "---"
echo "(Shows section 5 of passwd manual - file formats.)\n"

# 4. Show Manual Page Location
echo "4️⃣ Show Manual Page Location:"
echo "   man -w command"
echo "---"
echo "(Displays the location of the manual file.)\n"

# 5. Show All Manual Sections
echo "5️⃣ Show All Available Sections:"
echo "   man -a intro"
echo "---"
echo "(Shows all available intro pages from different sections.)\n"

# 6. Format Manual to Text
echo "6️⃣ Format Manual to Text:"
echo "   man -P cat command"
echo "---"
echo "(Displays the manual without using a pager.)\n"

echo "📚 MANUAL SECTIONS:"
echo "1. User Commands (Programs)"
echo "2. System Calls"
echo "3. Library Functions"
echo "4. Special Files (devices)"
echo "5. File Formats"
echo "6. Games"
echo "7. Miscellaneous"
echo "8. System Administration"
echo "9. Kernel Routines\n"

echo "🔍 NAVIGATION IN MAN PAGES:"
echo "• Space/Page Down: Next page"
echo "• b/Page Up: Previous page"
echo "• Enter: Next line"
echo "• /: Search forward"
echo "• ?: Search backward"
echo "• n: Next search result"
echo "• N: Previous search result"
echo "• q: Quit the manual\n"

echo "📌 PRACTICAL EXAMPLES:"
echo "1. Find commands related to passwords:"
echo "   man -k password"
echo ""
echo "2. Read about password file format:"
echo "   man 5 passwd"
echo ""
echo "3. Search for string in manual:"
echo "   man ls | grep 'sort'"
echo ""
echo "4. View all sections of printf:"
echo "   man -a printf"
echo ""
echo "5. Save manual to text file:"
echo "   man ls > ls_manual.txt\n"

echo "✨ Try these commands to explore Linux manuals! For more details, see the readme.md in this folder. Happy learning! 📚" 