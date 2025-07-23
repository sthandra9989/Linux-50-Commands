#!/bin/bash

# 🎨 Add some color to our output
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 📢 Print with color
print_colored() {
    echo -e "${BLUE}$1${NC}"
}

# 🧹 Cleanup function
cleanup() {
    rm -f file1.txt file2.txt config1.conf config2.conf
    rm -rf dir1 dir2
}

# 🧹 Clean up any existing files
cleanup

# 📝 Create example files for comparison
print_colored "🎯 Creating example files..."

# 📄 Create first text file
cat > file1.txt << EOF
Hello World!
This is the first file.
It has three lines.
EOF

# 📄 Create second text file with small differences
cat > file2.txt << EOF
Hello World!
This is the second file.
It has three lines.
EOF

# ⚙️ Create example config files
cat > config1.conf << EOF
# Server Configuration
port=8080
max_connections=100
debug=true
EOF

cat > config2.conf << EOF
# Server Configuration
port=8081
max_connections=200
debug=false
EOF

# 📁 Create directories with files
mkdir -p dir1 dir2
echo "Version 1" > dir1/test.txt
echo "Version 2" > dir2/test.txt

# 🔍 Basic diff comparison
print_colored "\n🔍 Basic diff comparison:"
diff file1.txt file2.txt

# 👥 Side by side comparison
print_colored "\n👥 Side by side comparison:"
diff -y file1.txt file2.txt

# 🌟 Unified format (like git)
print_colored "\n🌟 Unified format comparison:"
diff -u file1.txt file2.txt

# 📊 Compare config files
print_colored "\n📊 Comparing configuration files:"
diff config1.conf config2.conf

# 📁 Directory comparison
print_colored "\n📁 Comparing directories:"
diff -r dir1 dir2

# 💡 Brief mode (just show if files differ)
print_colored "\n💡 Brief comparison mode:"
diff -q file1.txt file2.txt

# 🎯 Generate a patch file
print_colored "\n🎯 Generating patch file:"
diff -u file1.txt file2.txt > changes.patch

# 📖 Show patch contents
print_colored "\n📖 Contents of the patch file:"
cat changes.patch

# 🧹 Clean up
cleanup

print_colored "\n✨ All examples completed! Happy diffing! 🎉" 