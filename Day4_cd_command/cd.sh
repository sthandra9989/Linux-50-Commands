#!/bin/bash

# Create a directory structure for practicing cd command
echo "🏗️ Creating directory structure for practice..."

# Create main directories
mkdir -p practice/
cd practice/

# Create a nested directory structure
mkdir -p documents/work/projects
mkdir -p documents/personal/photos
mkdir -p downloads/software
mkdir -p downloads/music
mkdir -p workspace/project1/src
mkdir -p workspace/project2/tests

# Create some files
touch documents/work/projects/report.txt
touch documents/personal/photos/vacation.jpg
touch workspace/project1/src/main.js
touch workspace/project2/tests/test.js

echo "🎯 Let's practice cd commands!"
echo "============================="

echo "1️⃣ Current location:"
pwd
echo "============================="

echo "2️⃣ Moving into documents folder:"
cd documents
pwd
echo "============================="

echo "3️⃣ Moving into work/projects:"
cd work/projects
pwd
echo "============================="

echo "4️⃣ Moving back one level (to work):"
cd ..
pwd
echo "============================="

echo "5️⃣ Moving back to home directory:"
cd
pwd
echo "============================="

echo "6️⃣ Moving back to our practice directory:"
cd - 
echo "============================="

echo "7️⃣ Moving to workspace/project1:"
cd workspace/project1
pwd
echo "============================="

echo "8️⃣ Moving to parent directory:"
cd ..
pwd
echo "============================="

echo "9️⃣ Moving to project2/tests:"
cd project2/tests
pwd
echo "============================="

echo "🔟 Moving back to practice root:"
cd ../../..
pwd
echo "============================="

echo "✨ Directory Structure Created! ✨"
echo "
📁 practice/
├── 📁 documents/
│   ├── 📁 work/
│   │   └── 📁 projects/
│   │       └── 📄 report.txt
│   └── 📁 personal/
│       └── 📁 photos/
│           └── 📄 vacation.jpg
├── 📁 downloads/
│   ├── 📁 software/
│   └── 📁 music/
└── 📁 workspace/
    ├── 📁 project1/
    │   └── 📁 src/
    │       └── 📄 main.js
    └── 📁 project2/
        └── 📁 tests/
            └── 📄 test.js
"

echo "💡 Try these commands yourself!"
echo "1. Make the script executable: chmod +x cd.sh"
echo "2. Run it: ./cd.sh"
echo "3. Practice navigating through the created directories!" 