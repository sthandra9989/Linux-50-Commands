#!/bin/bash

# Create a test environment
echo "🎯 Creating test environment..."
mkdir -p test_dir
echo "Hello World" > test_dir/file1.txt
echo "Secret data" > test_dir/sensitive.txt
chmod 600 test_dir/sensitive.txt
ln -s test_dir/file1.txt test_dir/link1.txt

# Basic stat example
echo -e "\n📊 1. Basic stat output:"
stat test_dir/file1.txt

# File system information
echo -e "\n💾 2. File system information:"
stat -f test_dir

# Custom format examples
echo -e "\n🎨 3. Custom format examples:"
echo "📝 File name and size:"
stat --format="File: %n, Size: %s bytes" test_dir/file1.txt

echo -e "\n⏰ Time information:"
stat --format="Access: %x\nModify: %y\nChange: %z" test_dir/file1.txt

echo -e "\n🔐 Permissions and ownership:"
stat --format="Mode: %A\nOwner: %U:%G" test_dir/file1.txt

# Symbolic link handling
echo -e "\n🔗 4. Symbolic link information:"
echo "Without following the link (-L):"
stat test_dir/link1.txt
echo -e "\nFollowing the link (-L):"
stat -L test_dir/link1.txt

# Security check example
echo -e "\n🔒 5. Security check for sensitive file:"
PERMS=$(stat -c "%a" test_dir/sensitive.txt)
if [ "$PERMS" = "600" ]; then
    echo "✅ Sensitive file has correct permissions (600)"
else
    echo "❌ Warning: Sensitive file has incorrect permissions ($PERMS)"
fi

# File size monitoring
echo -e "\n📏 6. File size monitoring:"
SIZE=$(stat -c "%s" test_dir/file1.txt)
echo "Size of file1.txt: $SIZE bytes"

# Multiple files stat
echo -e "\n📚 7. Multiple files information:"
stat -t test_dir/*

# Time since last modification
echo -e "\n⏳ 8. Time since last modification:"
MTIME=$(stat -c %Y test_dir/file1.txt)
NOW=$(date +%s)
DIFF=$((NOW - MTIME))
echo "File was modified $DIFF seconds ago"

# Inode information
echo -e "\n🔢 9. Inode information:"
stat --format="Inode: %i\nBlocks: %b\nIO Block: %B" test_dir/file1.txt

# Cleanup
echo -e "\n🧹 Cleaning up..."
rm -rf test_dir

echo -e "\n✨ Stat command demonstration completed!" 