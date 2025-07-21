# nano Text Editor in Linux

`nano` is a simple, user-friendly text editor for Unix-like systems. It's less complex than vim or emacs, making it perfect for beginners.

## Basic Usage

```bash
nano [options] [filename]
```

If filename doesn't exist, nano creates it.

## Common Options

- `-l` or `--linenumbers`: Display line numbers
- `-m` or `--mouse`: Enable mouse support
- `-B` or `--backup`: Create backup before editing
- `-v` or `--view`: Read-only mode
- `-c` or `--constantshow`: Constantly show cursor position
- `-S` or `--smooth`: Enable smooth scrolling
- `-i` or `--autoindent`: Automatically indent new lines
- `-E` or `--tabstospaces`: Convert tabs to spaces

## Essential Keyboard Shortcuts

### File Operations
- `Ctrl + O`: Save file
- `Ctrl + X`: Exit nano
- `Ctrl + R`: Read file into current buffer
- `Alt + >`: Next buffer (when multiple files open)
- `Alt + <`: Previous buffer

### Navigation
- `Ctrl + A`: Go to beginning of line
- `Ctrl + E`: Go to end of line
- `Ctrl + Y`: Page up
- `Ctrl + V`: Page down
- `Ctrl + _`: Go to specific line number
- `Alt + /`: End of file
- `Alt + \\`: Beginning of file

### Editing
- `Ctrl + K`: Cut current line
- `Ctrl + U`: Paste cut text
- `Alt + 6`: Copy current line
- `Ctrl + J`: Justify paragraph
- `Alt + U`: Undo
- `Alt + E`: Redo
- `Alt + #`: Toggle line numbers
- `Tab`: Indent marked region
- `Shift + Tab`: Unindent marked region

### Search and Replace
- `Ctrl + W`: Search forward
- `Alt + W`: Search backward
- `Ctrl + \\`: Search and replace
- `Alt + R`: Regular expression search

### Marking Text
- `Alt + A`: Start marking text
- `Alt + 6`: Copy marked text
- `Ctrl + K`: Cut marked text
- `Ctrl + U`: Paste marked text

## Practical Examples

### 1. Create and Edit a New File
```bash
nano newfile.txt
```

### 2. Edit System Configuration
```bash
sudo nano /etc/hostname
```

### 3. Edit with Line Numbers and Mouse Support
```bash
nano -l -m config.txt
```

### 4. Create Backup Before Editing
```bash
nano -B important.conf
```

### 5. Open Multiple Files
```bash
nano file1.txt file2.txt file3.txt
```
Switch between files with `Alt + >` and `Alt + <`

## Advanced Features

### 1. Syntax Highlighting
Nano supports syntax highlighting for many programming languages. Create or edit `~/.nanorc`:

```bash
include "/usr/share/nano/*.nanorc"
```

### 2. Custom Colors
Add to `~/.nanorc`:
```bash
set titlecolor brightwhite,blue
set statuscolor brightwhite,green
set errorcolor brightwhite,red
set selectedcolor brightwhite,magenta
set stripecolor ,yellow
set numbercolor cyan
set keycolor cyan
set functioncolor green
```

### 3. Auto Indentation
```bash
nano -i source.cpp
```
Maintains indentation level of previous line.

### 4. Soft Line Wrapping
```bash
nano -S longtext.txt
```
Wraps lines at screen edge without inserting line breaks.

## Common Tasks and Solutions

### 1. Large File Navigation
```bash
# Open with line numbers
nano -l largefile.log

# Go to specific line
Ctrl + _ then enter line number
```

### 2. Search and Replace
1. Press `Ctrl + \`
2. Enter search term
3. Enter replacement
4. Choose: `Y` (yes), `N` (no), `A` (all), or `C` (cancel)

### 3. Working with Code
```bash
# Python file with indentation
nano -ET4 script.py
```
Converts tabs to 4 spaces

### 4. Configuration Files
```bash
# Backup important configs
nano -B /etc/config.conf
```

### 5. Multiple File Operations
```bash
# Open all text files
nano *.txt

# Copy between files:
1. Alt + < or > to switch files
2. Alt + A to mark text
3. Alt + 6 to copy
4. Switch to target file
5. Ctrl + U to paste
```

## Best Practices

1. **Regular Saving**
   - Use `Ctrl + O` frequently
   - Enable automatic backup with `-B`

2. **Line Numbers**
   - Use `-l` for code editing
   - Toggle with `Alt + #`

3. **Mouse Usage**
   - Enable with `-m` for easier navigation
   - Click to position cursor

4. **File Backups**
   - Use `-B` for important files
   - Check backup files (end with ~)

5. **Configuration**
   - Create `~/.nanorc` for personal settings
   - Include syntax highlighting

## Troubleshooting

1. **Lost Changes**
   - Look for `.save` files in directory
   - Use `-B` option next time

2. **Strange Characters**
   - Check file encoding
   - Use `--unicode` option

3. **Performance Issues**
   - Disable line numbers for large files
   - Use `-v` for very large files

4. **Color Problems**
   - Check terminal support
   - Modify `.nanorc` settings

---

Remember: Nano is designed to be simple and intuitive. While it may not have all the features of vim or emacs, it's perfect for quick edits and basic text manipulation. 