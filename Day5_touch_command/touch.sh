#!/bin/bash

# Clear the screen for better visibility
clear

echo "🎯 Let's Learn the Touch Command! 🎯"
echo "=================================="

# Create a practice directory
echo "📁 Creating practice directory..."
mkdir -p touch_practice
cd touch_practice

echo "1️⃣ Basic File Creation"
echo "----------------------"
echo "Creating a new empty file..."
touch first_file.txt
ls -l first_file.txt
echo "=================================="

echo "2️⃣ Creating Multiple Files"
echo "-------------------------"
echo "Creating three files at once..."
touch file1.txt file2.txt file3.txt
ls -l file*.txt
echo "=================================="

echo "3️⃣ Update Access Time Only (-a)"
echo "------------------------------"
echo "Creating a test file..."
touch test_file.txt
echo "Some content" > test_file.txt
echo "Before update:"
ls -l test_file.txt
sleep 2
echo "Updating access time..."
touch -a test_file.txt
echo "After update:"
ls -l test_file.txt
echo "=================================="

echo "4️⃣ Update Modification Time Only (-m)"
echo "-----------------------------------"
echo "Before update:"
ls -l test_file.txt
sleep 2
echo "Updating modification time..."
touch -m test_file.txt
echo "After update:"
ls -l test_file.txt
echo "=================================="

echo "5️⃣ Set Specific Time (-t)"
echo "------------------------"
echo "Creating file with specific timestamp..."
touch -t 202401010830.45 specific_time.txt
ls -l specific_time.txt
echo "=================================="

echo "6️⃣ Reference File Time (-r)"
echo "-------------------------"
echo "Creating a reference file..."
touch reference_file.txt
sleep 2
echo "Creating new file with reference time..."
touch -r reference_file.txt new_file.txt
ls -l reference_file.txt new_file.txt
echo "=================================="

echo "7️⃣ Create Files in Subdirectories"
echo "-------------------------------"
echo "Creating nested directories and files..."
mkdir -p dir1/dir2/dir3
touch dir1/file1.txt dir1/dir2/file2.txt dir1/dir2/dir3/file3.txt
ls -R dir1
echo "=================================="

echo "8️⃣ Batch File Creation"
echo "---------------------"
echo "Creating multiple files with pattern..."
touch file_{1..5}.log
ls -l file_*.log
echo "=================================="

echo "9️⃣ Create Files with Different Extensions"
echo "--------------------------------------"
echo "Creating files with various extensions..."
touch project.{html,css,js,md}
ls -l project.*
echo "=================================="

echo "🔟 Update Directory Timestamp"
echo "--------------------------"
echo "Creating and updating directory timestamp..."
mkdir test_dir
ls -ld test_dir
sleep 2
touch test_dir
ls -ld test_dir
echo "=================================="

echo "✨ Practice Examples Created! ✨"
echo "
📝 What we learned:
1. Create empty files
2. Create multiple files at once
3. Update access time (-a)
4. Update modification time (-m)
5. Set specific timestamp (-t)
6. Use reference file time (-r)
7. Create files in subdirectories
8. Batch file creation
9. Multiple extensions
10. Update directory timestamps
"

echo "💡 Try these commands yourself!"
echo "1. Make script executable: chmod +x touch.sh"
echo "2. Run it: ./touch.sh"
echo "3. Explore the created files and timestamps!"

# Cleanup (commented out - uncomment to remove practice files)
# cd ..
# rm -rf touch_practice
