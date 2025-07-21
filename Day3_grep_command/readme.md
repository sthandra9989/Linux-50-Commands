# 🔍 GREP Command - Your Text Search Superpower! 

## 🤔 What is grep?
`grep` = **G**lobally search for **R**egular **E**xpression and **P**rint
> Like Ctrl+F but WAY more powerful! 💪

## 🎯 Basic Syntax
```bash
grep [options] pattern [file...]
```

## ⚡ Most Used Options (With Real Examples!)

### 1. Basic Search 📝
```bash
grep "error" log.txt
# Finds lines containing "error" in log.txt
# Example output:
# [2024-03-15 10:00:05] ERROR: Database connection failed
```

### 2. Case Insensitive (-i) 🔤
```bash
grep -i "ERROR" log.txt
# Finds "error", "ERROR", "Error", etc.
# Perfect for log searching! 📋
```

### 3. Line Numbers (-n) 🔢
```bash
grep -n "TODO" *.js
# Shows which line has your TODOs
# Output example:
# main.js:15:// TODO: Fix this bug
```

### 4. Count Matches (-c) 🧮
```bash
grep -c "Failed" error.log
# Counts how many times "Failed" appears
# Great for error analysis! 📊
```

### 5. Show Context (-A, -B, -C) 🔍
```bash
grep -A 1 "ERROR" log.txt  # Show 1 line After
grep -B 1 "ERROR" log.txt  # Show 1 line Before
grep -C 1 "ERROR" log.txt  # Show 1 line before and after
# Perfect for understanding error context! 🎯
```

### 6. Multiple Files Search 📚
```bash
grep "password" *
# Searches in all files
# Security audit helper! 🔒
```

### 7. Regular Expressions (-E) 🎨
```bash
grep -E "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}" file.txt
# Finds email addresses
# Regex power! 💪
```

### 8. Invert Match (-v) 🔄
```bash
grep -v "^#" config.txt
# Shows all lines that DON'T start with #
# Great for cleaning config files! 🧹
```

### 9. Word Match (-w) 📝
```bash
grep -w "test" file.txt
# Matches "test" but not "testing" or "latest"
# Precise searching! 🎯
```

### 10. Recursive Search (-r) 🌳
```bash
grep -r "TODO" .
# Searches in all files in current directory and subdirectories
# Project-wide search! 🚀
```

## 🎮 Real-World Examples

### 1. Log Analysis 📊
```bash
# Find all ERROR messages from today
grep "ERROR" $(date +%Y-%m-%d)-app.log
```

### 2. Code Review 👨‍💻
```bash
# Find all TODO comments in your project
grep -r "TODO" ./src/
```

### 3. Configuration Check 🔧
```bash
# Find all enabled features
grep -v "^#" config.txt | grep "=enabled"
```

### 4. Security Audit 🔒
```bash
# Find potential hardcoded passwords
grep -r "password" .
```

### 5. Data Extraction 📑
```bash
# Extract all email addresses
grep -E -o "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}" users.txt
```

## 🚀 Pro Tips!

1. 💡 Use quotes around your search pattern
   ```bash
   grep "search term" file.txt
   ```

2. 🎯 Combine options for power
   ```bash
   grep -in "error" *.log
   # Case insensitive + line numbers
   ```

3. 🔍 Use regular expressions for complex searches
   ```bash
   grep -E "^[0-9]+" numbers.txt
   # Find lines starting with numbers
   ```

4. 📊 Count occurrences in multiple files
   ```bash
   grep -c "ERROR" *.log
   # Shows error count per log file
   ```

## ⚠️ Common Gotchas
1. 🔴 Forgetting quotes around patterns with spaces
2. 🔴 Not escaping special characters
3. 🔴 Using wrong case sensitivity
4. 🔴 Forgetting to use -r for directory search

## 🤝 Friend Commands
- `find` - Locate files 🔍
- `sed` - Edit text streams ✏️
- `awk` - Text processing 📝
- `xargs` - Build command lines 🔨

## 🎓 Practice Time!
1. Run our grep.sh script 🚀
2. Try each command yourself 💻
3. Modify patterns and files 🔄
4. Create your own searches! 🎯

Remember: Practice makes perfect! Keep exploring grep's powers! 💪 