#!/bin/bash

# 🖥️ Demonstration of the Linux top command

echo "\n🚀 The 'top' command is a real-time system monitor for Linux!"
echo "It shows running processes, CPU/memory usage, and more."
echo "Let's see some practical examples!\n"

# 1. Show all running processes (default)
echo "1️⃣ Show all running processes (press 'q' to quit):"
echo "   top"
echo "---"
echo "(This will open the interactive top interface. Press 'q' to exit.)\n"

# 2. Show only a specific user's processes
echo "2️⃣ Show only a specific user's processes:"
echo "   top -u <username>"
echo "---"
echo "(Replace <username> with your actual username.)\n"

# 3. Batch mode for logging (non-interactive)
echo "3️⃣ Save a snapshot of top output to a file (batch mode):"
echo "   top -b -n 1 > top_snapshot.txt"
echo "---"
echo "(This saves the current process list to top_snapshot.txt)\n"

# 4. Monitor a specific process by PID
echo "4️⃣ Monitor a specific process by PID:"
echo "   top -p <pid>"
echo "---"
echo "(Replace <pid> with the process ID you want to monitor.)\n"

# 5. Change refresh interval to 1 second
echo "5️⃣ Change refresh interval to 1 second:"
echo "   top -d 1"
echo "---"
echo "(Updates the display every second.)\n"

# 6. Show threads instead of processes
echo "6️⃣ Show threads instead of processes:"
echo "   top -H"
echo "---"
echo "(Useful for debugging multi-threaded applications.)\n"

# 7. Save top output every minute (advanced)
echo "7️⃣ Save top output every minute (advanced):"
echo "   while true; do top -b -n 1 >> top_log.txt; sleep 60; done"
echo "---"
echo "(This logs system status every minute to top_log.txt)\n"

echo "✨ Try these commands on your Linux system to explore 'top'!"
echo "For more, see the readme.md in this folder. Happy monitoring! 👀" 