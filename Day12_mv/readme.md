# mv Command in Linux

The `mv` command is used to move or rename files and directories in Linux.

## Syntax

```
mv [options] source destination
```

- **source**: The file or directory you want to move or rename.
- **destination**: The new location or new name.

## Common Uses

### Move a File
```
mv file.txt /home/user/Documents/
```
Moves `file.txt` to the `/home/user/Documents/` directory.

### Rename a File
```
mv oldname.txt newname.txt
```
Renames `oldname.txt` to `newname.txt`.

### Move Multiple Files
```
mv file1.txt file2.txt /home/user/Documents/
```
Moves both files to the specified directory.

## Useful Options
- `-i`: Prompt before overwriting.
- `-u`: Move only when the source file is newer than the destination file or when the destination file is missing.
- `-v`: Verbose mode. Shows what is being done.

## Example with Options
```
mv -iv file.txt /home/user/Documents/
```

## Note
- By default, `mv` will overwrite files in the destination without asking. Use `-i` for safety.

---

Try out the examples above to get comfortable with the `mv` command!

---

## See Also: cp Command

The `cp` command is used to copy files and directories in Linux. It is similar to `mv`, but instead of moving, it creates a duplicate. For more details and a demonstration, see the next lesson! 