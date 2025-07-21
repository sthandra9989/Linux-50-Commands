#!/bin/bash

# 🔄 Demonstration of the Linux ps command

echo "\n💻 The 'ps' command shows information about active processes!"
echo "Let's explore how to monitor processes in Linux!\n"

# 1. Basic Usage
echo "1️⃣ Show Current User's Processes:"
echo "   ps"
echo "---"
echo "(Shows basic process information for current user)\n"

# 2. Show All Processes
echo "2️⃣ Show All Processes (BSD style):"
echo "   ps aux"
echo "---"
echo "(Shows detailed info about all processes)\n"

# 3. Show Process Tree
echo "3️⃣ Display Process Tree:"
echo "   ps -ejH"
echo "   # OR"
echo "   ps axjf"
echo "---"
echo "(Shows process hierarchy in tree format)\n"

# 4. Show Process by User
echo "4️⃣ Show Processes for Specific User:"
echo "   ps -u username"
echo "---"
echo "(Lists all processes owned by username)\n"

# 5. Show Process by PID
echo "5️⃣ Show Specific Process:"
echo "   ps -fp 1234"
echo "---"
echo "(Shows detailed info for process ID 1234)\n"

# 6. Custom Format Output
echo "6️⃣ Custom Format Display:"
echo "   ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%cpu"
echo "---"
echo "(Shows PID, PPID, command, CPU%, and Memory%, sorted by CPU usage)\n"

# 7. Real-time Process Monitoring
echo "7️⃣ Watch Processes in Real-time:"
echo "   watch -n 1 'ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%cpu | head'"
echo "---"
echo "(Updates process info every second)\n"

echo "📊 COMMON FORMAT SPECIFIERS:"
echo "• PID: Process ID"
echo "• PPID: Parent Process ID"
echo "• %CPU: CPU usage"
echo "• %MEM: Memory usage"
echo "• VSZ: Virtual memory size"
echo "• RSS: Resident set size"
echo "• TTY: Terminal type"
echo "• STAT: Process status"
echo "• START: Starting time"
echo "• TIME: CPU time"
echo "• COMMAND: Command name/line\n"

echo "📝 PROCESS STATES:"
echo "• R: Running"
echo "• S: Sleeping (interruptible)"
echo "• D: Disk sleep (uninterruptible)"
echo "• T: Stopped"
echo "• Z: Zombie"
echo "• X: Dead\n"

echo "🚀 PRACTICAL EXAMPLES:"
echo "1. Find all python processes:"
echo "   ps aux | grep python"
echo ""
echo "2. Show top CPU consumers:"
echo "   ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | head"
echo ""
echo "3. Monitor specific user's processes:"
echo "   ps -u username -o pid,ppid,cmd"
echo ""
echo "4. Check process tree for specific PID:"
echo "   ps -f --forest -p 1234"
echo ""
echo "5. Show threads of a process:"
echo "   ps -T -p 1234\n"

echo "✨ Try these commands to monitor your system! For more details, see the readme.md in this folder. Happy process monitoring! 🔄" 