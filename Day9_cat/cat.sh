#!/bin/bash

# Create a test environment
echo "🎯 Creating test files..."

# Create sample files
echo "Hello World" > file1.txt
echo -e "Line 1\nLine 2\nLine 3" > file2.txt
echo -e "Important Data\nSecret Key\nDebug Info" > data.txt

# 1. Basic cat usage
echo -e "\n📄 1. Basic cat usage:"
echo "Contents of file1.txt:"
cat file1.txt

# 2. Display multiple files
echo -e "\n📚 2. Displaying multiple files:"
cat file1.txt file2.txt

# 3. Display with line numbers
echo -e "\n🔢 3. Display with line numbers:"
echo "All lines numbered:"
cat -n file2.txt
echo -e "\nNon-blank lines numbered:"
cat -b file2.txt

# 4. Show end of lines
echo -e "\n💫 4. Show end of lines:"
cat -E file2.txt

# 5. Create a file using here document
echo -e "\n📝 5. Creating a file using here document:"
cat << EOF > config.txt
[config]
name=Test Application
version=1.0
author=Linux Learner
EOF
echo "Created config.txt:"
cat config.txt

# 6. Append to a file
echo -e "\n➕ 6. Appending to a file:"
echo "Adding new line to file1.txt"
echo "This is a new line" >> file1.txt
cat file1.txt

# 7. Combine files
echo -e "\n🔗 7. Combining files:"
cat file1.txt file2.txt > combined.txt
echo "Contents of combined.txt:"
cat combined.txt

# 8. Display with special characters
echo -e "\n👀 8. Display with special characters:"
echo -e "Tab\there\nand a new line" > special.txt
echo "Normal display:"
cat special.txt
echo "Show special characters:"
cat -A special.txt

# 9. Using cat with pipes
echo -e "\n🔄 9. Using cat with pipes:"
echo "First 2 lines of data.txt:"
cat data.txt | head -n 2

# 10. Create a numbered backup
echo -e "\n💾 10. Creating a numbered backup:"
cat data.txt > data.txt.bak
echo "Backup created as data.txt.bak"
cat data.txt.bak

# Cleanup
echo -e "\n🧹 Cleaning up..."
rm file1.txt file2.txt data.txt config.txt combined.txt special.txt data.txt.bak

echo -e "\n✨ Cat command demonstration completed!" 