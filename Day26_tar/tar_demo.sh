#!/bin/bash

# Clear the screen for better visibility
clear

echo "🎯 Let's Learn the TAR Command! 🎯"
echo "=================================="

# Create a practice directory
echo "📁 Creating practice directory..."
mkdir -p tar_practice
cd tar_practice

# 1. Basic File Creation for Testing
echo "1️⃣ Creating Test Files and Directories"
echo "-------------------------------------"
mkdir -p test_files/{docs,images,config}
echo "This is a text file" > test_files/docs/doc1.txt
echo "Another text file" > test_files/docs/doc2.txt
echo "Configuration file" > test_files/config/settings.conf
echo "Image data" > test_files/images/image1.jpg
echo "More image data" > test_files/images/image2.jpg
ls -R test_files/
echo "=================================="

# 2. Create Simple TAR Archive
echo "2️⃣ Creating Simple TAR Archive"
echo "-----------------------------"
tar -cvf my_backup.tar test_files/
ls -lh my_backup.tar
echo "=================================="

# 3. Create Compressed Archives
echo "3️⃣ Creating Compressed Archives"
echo "-----------------------------"
# Gzip
echo "Creating tar.gz archive..."
tar -czvf my_backup.tar.gz test_files/
# Bzip2
echo "Creating tar.bz2 archive..."
tar -cjvf my_backup.tar.bz2 test_files/
# XZ
echo "Creating tar.xz archive..."
tar -cJvf my_backup.xz test_files/
echo "Comparing sizes:"
ls -lh my_backup.*
echo "=================================="

# 4. View Archive Contents
echo "4️⃣ Viewing Archive Contents"
echo "--------------------------"
echo "Contents of tar.gz archive:"
tar -tzvf my_backup.tar.gz
echo "=================================="

# 5. Extract Files
echo "5️⃣ Extracting Archives"
echo "--------------------"
mkdir extracted
echo "Extracting tar.gz to 'extracted' directory..."
tar -xzvf my_backup.tar.gz -C extracted/
ls -R extracted/
echo "=================================="

# 6. Single File Operations
echo "6️⃣ Single File Operations"
echo "----------------------"
echo "Extracting single file..."
tar -xzvf my_backup.tar.gz test_files/docs/doc1.txt
cat test_files/docs/doc1.txt
echo "=================================="

# 7. Append Files
echo "7️⃣ Appending to Archive"
echo "---------------------"
echo "New file content" > new_file.txt
echo "Adding new_file.txt to archive..."
tar -rvf my_backup.tar new_file.txt
echo "=================================="

# 8. Create Dated Backup
echo "8️⃣ Creating Dated Backup"
echo "---------------------"
tar -czvf backup-$(date +%Y%m%d).tar.gz test_files/
ls -lh backup-*.tar.gz
echo "=================================="

# 9. Exclude Files
echo "9️⃣ Archive with Exclusions"
echo "-----------------------"
echo "Creating archive excluding 'images' directory..."
tar -czvf no_images.tar.gz --exclude='test_files/images' test_files/
echo "Contents of no_images.tar.gz:"
tar -tzvf no_images.tar.gz
echo "=================================="

# 10. Verify Archive
echo "🔟 Verifying Archives"
echo "------------------"
echo "Verifying tar archive..."
tar -tvf my_backup.tar
echo "=================================="

echo "✨ TAR Command Practice Complete! ✨"
echo "
📝 What we learned:
1. Create simple archives
2. Use different compressions
3. View archive contents
4. Extract files
5. Work with single files
6. Append to archives
7. Create dated backups
8. Exclude files
9. Verify archives
"

echo "💡 Try these commands yourself!"
echo "1. Make script executable: chmod +x tar_demo.sh"
echo "2. Run it: ./tar_demo.sh"
echo "3. Explore the created archives!"

# Cleanup (commented out - uncomment to remove practice files)
# cd ..
# rm -rf tar_practice 