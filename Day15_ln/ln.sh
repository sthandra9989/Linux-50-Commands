#!/bin/bash

# 🔗 Demonstration of the Linux ln command

echo "\n🔗 The 'ln' command is used to create links between files in Linux!"
echo "There are two types of links: symbolic links (soft) and hard links."
echo "Let's see some practical examples!\n"

# 1. Create a hard link
echo "1️⃣ Create a hard link:"
echo "   ln original.txt hard_link.txt"
echo "---"
echo "(This creates a hard link - both files point to the same data.)\n"

# 2. Create a symbolic link (soft link)
echo "2️⃣ Create a symbolic link:"
echo "   ln -s original.txt symbolic_link.txt"
echo "---"
echo "(This creates a symbolic link - like a shortcut to the original file.)\n"

# 3. Create a symbolic link to a directory
echo "3️⃣ Create a symbolic link to a directory:"
echo "   ln -s /path/to/directory/ link_to_directory"
echo "---"
echo "(Creates a symbolic link to a directory - hard links to directories are not allowed.)\n"

# 4. Create a symbolic link with absolute path
echo "4️⃣ Create a symbolic link with absolute path:"
echo "   ln -s /absolute/path/to/file.txt link_name"
echo "---"
echo "(Uses full path - good for linking across directories.)\n"

# 5. Create a symbolic link with relative path
echo "5️⃣ Create a symbolic link with relative path:"
echo "   ln -s ../relative/path/file.txt link_name"
echo "---"
echo "(Uses relative path - good for portable directory structures.)\n"

# 6. Force create a symbolic link
echo "6️⃣ Force create a symbolic link (overwrite existing):"
echo "   ln -sf target_file link_name"
echo "---"
echo "(Forces creation even if link_name already exists.)\n"

echo "⚠️  IMPORTANT NOTES:"
echo "• Hard links can't cross filesystem boundaries"
echo "• Hard links can't link to directories"
echo "• Symbolic links can point to non-existent targets"
echo "• Use absolute paths when linking across directories"
echo "• Check link targets exist before creating symbolic links\n"

echo "✨ Try these commands on your Linux system! For more details, see the readme.md in this folder. Happy linking! 🔗" 