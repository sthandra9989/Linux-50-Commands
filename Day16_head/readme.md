# head Command in Linux

The `head` command is used to view the beginning (first part) of text files. By default, it displays the first 10 lines of a file.

## Syntax

```bash
head [options] [file(s)]
```

If no file is specified, head reads from standard input.

## Common Uses

### View Default (First 10 Lines)
```bash
head file.txt
```
Shows the first 10 lines of file.txt.

### View Specific Number of Lines
```bash
head -n 5 file.txt
# OR shorter version
head -5 file.txt
```
Shows the first 5 lines of file.txt.

### View Specific Number of Bytes
```bash
head -c 100 file.txt
```
Shows the first 100 bytes of file.txt.

### View Multiple Files
```bash
head file1.txt file2.txt
```
Shows the first 10 lines of each file with headers.

### View All But Last N Lines
```bash
head -n -5 file.txt
```
Shows all lines except the last 5 lines.

## Useful Options

- `-n N` or `-N`: Print the first N lines (default is 10)
- `-c N`: Print the first N bytes
- `-q`: Quiet mode, never print headers
- `-v`: Verbose mode, always print headers
- `--help`: Display help message

## Common Use Cases

1. **Log File Analysis:**
   ```bash
   head /var/log/syslog
   ```
   Quick view of recent log entries.

2. **File Preview:**
   ```bash
   head -n 20 large_file.txt
   ```
   Preview first 20 lines of a large file.

3. **Multiple File Headers:**
   ```bash
   head -n 1 *.csv
   ```
   View headers of all CSV files.

4. **Byte-Limited Preview:**
   ```bash
   head -c 1K large_file.bin
   ```
   View first kilobyte of a binary file.

## Tips and Tricks

1. **Combining with Other Commands:**
   ```bash
   command | head
   ```
   View first 10 lines of command output.

2. **Excluding Lines:**
   ```bash
   head -n -5
   ```
   Show all but last 5 lines.

3. **Quick File Check:**
   ```bash
   head -1 file.txt
   ```
   View just the first line.

## Best Practices

1. **Use -n for Lines:**
   - Prefer `-n` over just `-number` for clarity
   - Makes scripts more readable

2. **Use -q for Scripts:**
   - When processing multiple files in scripts
   - Prevents header interference

3. **Use -v for Clarity:**
   - When you need to be sure which file you're viewing
   - Good for documentation

## Common Combinations

1. **View First 5 Lines of Multiple Files:**
   ```bash
   head -n 5 file1.txt file2.txt
   ```

2. **Silent Multiple File View:**
   ```bash
   head -q -n 1 *.txt
   ```

3. **Byte-Limited View of Binary:**
   ```bash
   head -c 16 binary_file
   ```

## Related Commands

- `tail`: View end of file
- `cat`: View entire file
- `less`: Interactive file viewer
- `more`: Page through file

## Examples with Explanation

```bash
# View first 10 lines
head file.txt
# Default behavior

# View first 5 lines
head -n 5 file.txt
# Explicit line count

# View first 100 bytes
head -c 100 file.txt
# Byte-limited view

# View multiple files
head -n 1 *.txt
# First line of all text files
```

---

Remember: The head command is particularly useful for quickly inspecting files or monitoring logs without loading the entire file into memory. 