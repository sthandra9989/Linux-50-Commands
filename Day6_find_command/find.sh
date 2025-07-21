#!/bin/bash

# Create a test directory structure
echo "Creating test directory structure..."
mkdir -p test_dir/{documents,images,temp}
touch test_dir/documents/{doc1.txt,doc2.txt,notes.md}
touch test_dir/images/{photo1.jpg,photo2.jpg,image.png}
touch test_dir/temp/{temp1.tmp,temp2.tmp}

echo -e "\n1. Finding all .txt files:"
find test_dir -name "*.txt"

echo -e "\n2. Finding all directories:"
find test_dir -type d

echo -e "\n3. Finding files with specific name pattern (case-insensitive):"
find test_dir -iname "*photo*"

echo -e "\n4. Finding empty files:"
find test_dir -type f -empty

echo -e "\n5. Finding and executing a command (listing file details):"
find test_dir -name "*.txt" -exec ls -l {} \;

echo -e "\n6. Finding files by multiple extensions:"
find test_dir \( -name "*.jpg" -o -name "*.png" \)

echo -e "\n7. Finding files modified in the last 24 hours:"
find test_dir -type f -mtime -1

# Cleanup
echo -e "\nCleaning up test directory..."
rm -rf test_dir

echo -e "\nFind command demonstration completed!" 