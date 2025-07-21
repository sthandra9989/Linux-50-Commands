# cp Command in Linux

The `cp` command is used to copy files and directories in Linux.

## Syntax

```
cp [options] source destination
```

- **source**: The file or directory you want to copy.
- **destination**: The location or name for the new copy.

## Common Uses

### Copy a File
```
cp file.txt /home/user/Documents/
```
Copies `file.txt` to the `/home/user/Documents/` directory.

### Copy and Rename a File
```
cp oldname.txt newname.txt
```
Copies `oldname.txt` to a new file called `newname.txt`.

### Copy Multiple Files
```
cp file1.txt file2.txt /home/user/Documents/
```
Copies both files to the specified directory.

### Copy a Directory (Recursively)
```
cp -r myfolder/ /home/user/backup/
```
Copies the entire `myfolder` directory and its contents to `/home/user/backup/`.

## Useful Options
- `-i`: Prompt before overwriting files.
- `-r` or `-R`: Copy directories recursively.
- `-u`: Copy only when the source file is newer than the destination file or when the destination file is missing.
- `-v`: Verbose mode. Shows what is being done.
- `-p`: Preserve file attributes (timestamps, permissions, etc.).

## Example with Options
```
cp -iv file.txt /home/user/Documents/
```

## Note
- By default, `cp` will overwrite files in the destination without asking. Use `-i` for safety.

---

Try out the examples above to get comfortable with the `cp` command! 