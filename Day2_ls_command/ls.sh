#!/bin/bash

# Create some test files and directories
echo "Creating test files and directories... 📁"
mkdir -p test_directory
cd test_directory

# Create regular files
echo "Hello World" > regular_file.txt
echo "Some content" > another_file.txt

# Create hidden files
echo "I'm hidden!" > .hidden_file
echo "Secret stuff" > .secret

# Create subdirectories
mkdir documents
mkdir pictures
mkdir -p nested/folder/structure

# Create some files in subdirectories
echo "Document content" > documents/doc1.txt
echo "Picture data" > pictures/pic1.jpg
echo "Nested file" > nested/folder/structure/deep_file.txt

echo "🎯 Let's try different ls commands!"
echo "=================================="

echo "📝 Basic ls:"
ls
echo "=================================="

echo "📊 ls with details (ls -l):"
ls -l
echo "=================================="

echo "🕵️ ls showing hidden files (ls -a):"
ls -a
echo "=================================="

echo "🔍 ls with human-readable sizes (ls -lh):"
ls -lh
echo "=================================="

echo "🌳 ls showing directory tree (ls -R):"
ls -R
echo "=================================="

echo "🎨 ls with all details and hidden files (ls -la):"
ls -la
echo "=================================="

# Clean up (commented out - uncomment if you want to remove test files)
# cd ..
# rm -rf test_directory

echo "✨ Practice complete! Try these commands yourself!" 