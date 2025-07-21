#!/bin/bash

# 1. Create a single directory
echo "📂 Creating a single directory: myfolder"
mkdir myfolder
ls -ld myfolder

# 2. Create multiple directories
echo -e "\n🗃️ Creating multiple directories: folder1, folder2, folder3"
mkdir folder1 folder2 folder3
ls -ld folder1 folder2 folder3

# 3. Create nested directories (parent/child/grandchild)
echo -e "\n🌳 Creating nested directories: parent/child/grandchild"
mkdir -p parent/child/grandchild
ls -R parent

# 4. Set permissions while creating
echo -e "\n🔐 Creating a directory with permissions 755: secure_folder"
mkdir -m 755 secure_folder
ls -ld secure_folder

# 5. Verbose output
echo -e "\n📢 Verbose output while creating: verbose_dir"
mkdir -v verbose_dir

# 6. Create directories with spaces
echo -e "\n📝 Creating a directory with spaces: 'My Documents'"
mkdir "My Documents"
ls -ld "My Documents"

# 7. Batch directory creation with a loop
echo -e "\n📦 Batch directory creation: dir_1 to dir_5"
for i in {1..5}; do mkdir "dir_$i"; done
ls -d dir_*

# 8. Date-based folder creation
echo -e "\n📅 Creating a date-based folder: backup_$(date +%Y-%m-%d)"
mkdir "backup_$(date +%Y-%m-%d)"
ls -ld backup_*

# 9. Error when directory exists
echo -e "\n⚠️ Trying to create an existing directory: myfolder"
mkdir myfolder || echo "Directory already exists!"

# 10. Clean up all created directories
echo -e "\n🧹 Cleaning up..."
rm -rf myfolder folder1 folder2 folder3 parent secure_folder verbose_dir "My Documents" dir_* backup_*
echo "✨ mkdir command demonstration completed!" 