# 📂 PWD Command - Your Directory Navigator! 

## 🤔 What is pwd?
`pwd` = **P**rint **W**orking **D**irectory
> Shows you exactly where you are in your system!

## 🛠️ Quick Usage
```bash
pwd    # That's it! Simple, right? 😊
```

## 🌟 Cool Options
- `pwd` - Shows current location
- `pwd -L` - Shows location (with shortcuts)
- `pwd -P` - Shows actual location (no shortcuts)

## 💡 Examples (Super Simple!)

### 1. Where am I? 🗺️
```bash
pwd
# Output: /home/user/documents
```

### 2. Working with Shortcuts 🔗
```bash
# With a shortcut folder
pwd -L    # Shows the shortcut path
pwd -P    # Shows the real path
```

### 3. Save Your Location 📌
```bash
# Remember where you are
current_spot=$(pwd)
cd somewhere_else
cd "$current_spot"    # Go back home! 🏠
```

## 🚀 Pro Tips
1. Lost? Just type `pwd` 🗺️
2. Working with spaces? Use quotes! "My Documents" ✨
3. Making scripts? Save your location first! 📝
4. Need the real path? Use -P 🎯

## ⚠️ Common Gotchas
1. No access? Check permissions! 🔒
2. Path looks weird? Check for shortcuts! 🔄
3. Too long path? Try relative paths! 📏

## 🤝 Friend Commands
- `cd` - Move around
- `ls` - See what's around you
- `dirname` - Get parent folder
- `basename` - Get current folder name

## 🎮 Quick Practice
1. Open terminal 💻
2. Type `pwd` 🖨️
3. Move somewhere: `cd Documents` 📁
4. Type `pwd` again! 🖨️
5. See the difference? You're getting it! 🌟

Remember: When lost in terminal, `pwd` is your compass! 🧭
