#!/bin/bash

# 📄 Demonstration of the Linux tail command

echo "\n📜 The 'tail' command is used to view the end of text files!"
echo "By default, it shows the last 10 lines of a file."
echo "Let's see some practical examples!\n"

# 1. View last 10 lines (default)
echo "1️⃣ View last 10 lines of a file (default):"
echo "   tail file.txt"
echo "---"
echo "(Shows the last 10 lines of file.txt)\n"

# 2. View specific number of lines
echo "2️⃣ View specific number of lines:"
echo "   tail -n 5 file.txt"
echo "   # OR shorter version"
echo "   tail -5 file.txt"
echo "---"
echo "(Shows the last 5 lines of file.txt)\n"

# 3. View from specific line number
echo "3️⃣ View from specific line number:"
echo "   tail -n +5 file.txt"
echo "---"
echo "(Shows all lines starting from line 5)\n"

# 4. Monitor file in real-time (follow)
echo "4️⃣ Monitor file in real-time:"
echo "   tail -f log_file.txt"
echo "---"
echo "(Continuously shows new lines as they're added to the file)\n"

# 5. Monitor multiple files
echo "5️⃣ Monitor multiple files:"
echo "   tail -f file1.log file2.log"
echo "---"
echo "(Monitors multiple files simultaneously)\n"

# 6. Show file headers
echo "6️⃣ Show headers when viewing multiple files:"
echo "   tail -v file1.txt file2.txt"
echo "---"
echo "(Displays headers to identify which file content belongs to)\n"

# 7. Follow file by name
echo "7️⃣ Follow file by name (even if rotated):"
echo "   tail -F logfile.txt"
echo "---"
echo "(Continues following even if file is renamed/rotated)\n"

echo "⚡ PRACTICAL USES:"
echo "• Monitor log files in real-time"
echo "• Check recent system events"
echo "• View latest entries in growing files"
echo "• Debug application logs"
echo "• Watch multiple log files simultaneously\n"

echo "🔍 COMMON OPTIONS:"
echo "• -n N: Show last N lines"
echo "• -f: Follow file changes"
echo "• -F: Follow file by name"
echo "• -q: Never print headers"
echo "• -v: Always print headers"
echo "• --pid=PID: Stop following when PID dies\n"

echo "📌 EXAMPLES IN PRACTICE:"
echo "1. Monitor system log:"
echo "   tail -f /var/log/syslog"
echo ""
echo "2. View last 50 lines:"
echo "   tail -n 50 large_file.txt"
echo ""
echo "3. Monitor multiple logs:"
echo "   tail -f app.log error.log"
echo ""
echo "4. View from line 100:"
echo "   tail -n +100 file.txt"
echo ""
echo "5. Monitor until process ends:"
echo "   tail -f log.txt --pid=1234\n"

echo "✨ Try these commands to explore 'tail'! For more details, see the readme.md in this folder. Happy tailing! 📜" 