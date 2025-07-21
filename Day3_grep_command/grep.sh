#!/bin/bash

# Create test directory and files
echo "📂 Setting up test environment..."
mkdir -p test_files
cd test_files

# Create log file
cat > server.log << EOF
[2024-03-15 10:00:01] INFO: Server started
[2024-03-15 10:00:05] ERROR: Database connection failed
[2024-03-15 10:00:10] INFO: Retry database connection
[2024-03-15 10:00:15] SUCCESS: Database connected
[2024-03-15 10:00:20] WARNING: High memory usage
[2024-03-15 10:00:25] ERROR: API timeout
[2024-03-15 10:00:30] INFO: Cache cleared
EOF

# Create config file
cat > config.txt << EOF
# Server Configuration
PORT=8080
HOST=localhost
DEBUG_MODE=true
MAX_CONNECTIONS=100
TIMEOUT=30
# Database Settings
DB_HOST=127.0.0.1
DB_PORT=5432
DB_NAME=myapp
EOF

# Create user data file
cat > users.txt << EOF
john.doe@email.com - Admin
jane.smith@email.com - User
bob.wilson@email.com - User
alice.jones@email.com - Admin
mike.brown@email.com - Developer
sarah.white@email.com - User
EOF

echo "🚀 Let's explore grep commands!"
echo "=============================="

echo "1️⃣ Basic Search - Find 'ERROR' in logs:"
grep "ERROR" server.log
echo "=============================="

echo "2️⃣ Case Insensitive Search - Find 'info' in logs:"
grep -i "info" server.log
echo "=============================="

echo "3️⃣ Line Numbers - Show 'User' with line numbers:"
grep -n "User" users.txt
echo "=============================="

echo "4️⃣ Count Matches - Count 'ERROR' occurrences:"
grep -c "ERROR" server.log
echo "=============================="

echo "5️⃣ Show Context - Show lines around 'ERROR':"
grep -C 1 "ERROR" server.log
echo "=============================="

echo "6️⃣ Multiple File Search - Find 'HOST' in all files:"
grep "HOST" *
echo "=============================="

echo "7️⃣ Regular Expression - Find email addresses:"
grep -E "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" users.txt
echo "=============================="

echo "8️⃣ Invert Match - Show non-comment lines in config:"
grep -v "^#" config.txt
echo "=============================="

echo "9️⃣ Word Match - Find whole word 'User':"
grep -w "User" users.txt
echo "=============================="

echo "🔟 Recursive Search - Find 'ERROR' in all directories:"
cd ..
grep -r "ERROR" .
echo "=============================="

# Show only matching part
echo "1️⃣1️⃣ Show Only Matching Part - Extract emails:"
grep -o -E "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" test_files/users.txt
echo "=============================="

# Count matches in each file
echo "1️⃣2️⃣ Count Matches Per File - Find 'HOST':"
grep -c "HOST" test_files/*
echo "=============================="

echo "✨ Practice complete! Try these commands yourself!"
echo "💡 To run this script:"
echo "1. Make it executable: chmod +x grep.sh"
echo "2. Run it: ./grep.sh" 