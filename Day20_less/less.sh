#!/bin/bash

# 📚 Demonstration of the Linux less command

echo "\n🔍 The 'less' command is a powerful file viewer in Linux!"
echo "It's like a fancy version of more with backward and forward navigation."
echo "Let's explore its amazing features! 🚀\n"

# 1. Basic Usage
echo "1️⃣ View a File:"
echo "   less filename.txt"
echo "---"
echo "🎯 Opens file in less viewer (press 'q' to quit)\n"

# 2. Open Multiple Files
echo "2️⃣ View Multiple Files:"
echo "   less file1.txt file2.txt"
echo "---"
echo "🔄 Switch between files using :n (next) and :p (previous)\n"

# 3. Show Line Numbers
echo "3️⃣ Display with Line Numbers:"
echo "   less -N filename.txt"
echo "---"
echo "📏 Shows line numbers for easy reference\n"

# 4. Open at Specific Line
echo "4️⃣ Start at Line Number:"
echo "   less +100 filename.txt"
echo "---"
echo "⏩ Opens file at line 100\n"

# 5. Show File Info
echo "5️⃣ Display File Information:"
echo "   less -M filename.txt"
echo "---"
echo "ℹ️  Shows detailed file information in status bar\n"

# 6. Highlight Search
echo "6️⃣ Highlight Search Results:"
echo "   less -g filename.txt"
echo "---"
echo "🔦 Highlights search matches\n"

# 7. Follow Mode (like tail -f)
echo "7️⃣ Follow Mode for Logs:"
echo "   less +F logfile.txt"
echo "---"
echo "📊 Monitors file changes in real-time\n"

echo "🎮 NAVIGATION COMMANDS:"
echo "⬆️  Up Arrow/k: Scroll up one line"
echo "⬇️  Down Arrow/j: Scroll down one line"
echo "⏮️  b/Page Up: Previous page"
echo "⏭️  Space/Page Down: Next page"
echo "⏪ g: Go to first line"
echo "⏩ G: Go to last line"
echo "🔍 /pattern: Search forward"
echo "🔎 ?pattern: Search backward"
echo "➡️  n: Next search match"
echo "⬅️  N: Previous search match"
echo "💫 F: Follow mode (like tail -f)"
echo "❌ q: Quit less\n"

echo "🎨 SPECIAL FEATURES:"
echo "📝 v: Open current line in editor"
echo "📋 h: Display help"
echo "🔢 = : Show file info and position"
echo "🏷️  m: Mark current position"
echo "🎯 ': Return to marked position"
echo "📑 :n: Next file"
echo "📎 :p: Previous file\n"

echo "🚀 PRACTICAL EXAMPLES:"
echo "1. View a large log file:"
echo "   less /var/log/syslog"
echo ""
echo "2. Monitor log in real-time:"
echo "   less +F application.log"
echo ""
echo "3. View compressed file:"
echo "   less compressed.gz"
echo ""
echo "4. View with line numbers:"
echo "   less -N source_code.py"
echo ""
echo "5. Search in file:"
echo "   less file.txt"
echo "   Then type /search_term\n"

echo "💡 PRO TIPS:"
echo "• Use -i for case-insensitive search"
echo "• Press ESC-u to toggle highlighting"
echo "• Use -s to squeeze multiple blank lines"
echo "• Press v to edit current line in editor"
echo "• Use & to show only matching lines\n"

echo "✨ Try these commands to master 'less'! For more details, see the readme.md in this folder. Happy browsing! 🎉" 