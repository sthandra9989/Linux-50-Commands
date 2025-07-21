# ps Command in Linux

The `ps` command (Process Status) is used to view information about processes running on your system. It provides a snapshot of current processes.

## Basic Syntax

```bash
ps [options]
```

## Common Options

### Basic Process Selection
- `ps`: Show processes for current terminal
- `ps a`: Show processes for all terminals
- `ps x`: Show processes without controlling terminal
- `ps u`: Show detailed process information
- `ps aux`: Show all processes (BSD style)
- `ps -ef`: Show all processes (UNIX style)

### Process Tree
- `ps -ejH`: Show process tree
- `ps axjf`: Show process tree (BSD style)
- `ps --forest`: Show process tree (alternate)

### Process Selection
- `ps -u username`: Show user's processes
- `ps -p pid`: Show specific process
- `ps -C command`: Show processes by command name
- `ps --ppid ppid`: Show child processes of PPID

### Output Format
- `-o format`: Custom output format
- `-e`: Select all processes
- `-f`: Full format listing
- `--sort`: Sort output

## Output Fields

### Basic Fields
- `PID`: Process ID
- `PPID`: Parent Process ID
- `%CPU`: CPU usage
- `%MEM`: Memory usage
- `VSZ`: Virtual memory size
- `RSS`: Resident set size
- `TTY`: Terminal type
- `STAT`: Process status
- `START`: Starting time
- `TIME`: CPU time
- `COMMAND`: Command name/line

### Process States
- `R`: Running
- `S`: Sleeping (interruptible)
- `D`: Disk sleep (uninterruptible)
- `T`: Stopped
- `Z`: Zombie
- `X`: Dead
- `<`: High priority
- `N`: Low priority

## Common Use Cases

### 1. System Monitoring
```bash
# Show all processes with full details
ps aux

# Sort by CPU usage
ps aux --sort=-%cpu

# Sort by memory usage
ps aux --sort=-%mem
```

### 2. Process Tree
```bash
# Show process hierarchy
ps -ejH

# Show process tree for specific user
ps -u username -f --forest
```

### 3. Custom Output
```bash
# Show specific columns
ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%cpu

# Show processes with threads
ps -eLf
```

### 4. Process Filtering
```bash
# Show processes by user
ps -u username

# Show process by name
ps -C nginx

# Show process and children
ps --ppid 1234
```

### 5. Real-time Monitoring
```bash
# Update every second
watch -n 1 'ps -eo pid,ppid,cmd,%cpu,%mem --sort=-%cpu | head'
```

## Advanced Usage

### 1. Thread Information
```bash
# Show thread details
ps -T -p 1234

# Show all threads
ps -eLf
```

### 2. Security Context
```bash
# Show security info
ps -eM

# Show capabilities
ps -eo pid,cmd,caps
```

### 3. Memory Details
```bash
# Show memory info
ps -eo pid,cmd,size,rss,vsize

# Show page faults
ps -eo pid,cmd,min_flt,maj_flt
```

### 4. Process Groups
```bash
# Show process group info
ps -eo pid,ppid,pgid,cmd
```

## Tips and Tricks

### 1. Finding Resource Hogs
```bash
# CPU intensive processes
ps aux --sort=-%cpu | head

# Memory intensive processes
ps aux --sort=-%mem | head
```

### 2. Process Relationships
```bash
# Show parent-child relationships
ps -e --forest

# Show specific process tree
ps -f --forest -p 1234
```

### 3. Combining with Other Commands
```bash
# Find zombie processes
ps aux | grep 'Z'

# Count processes by user
ps -eo user | sort | uniq -c
```

### 4. Script Friendly Output
```bash
# No headers, custom format
ps -eo pid,cmd --no-headers

# Comma separated output
ps -eo pid,cmd --no-headers | tr -s ' ' ','
```

## Best Practices

1. **Resource Monitoring**
   - Use appropriate sorting for finding issues
   - Combine with watch for real-time monitoring
   - Filter output to focus on relevant processes

2. **Process Investigation**
   - Use process trees to understand relationships
   - Check both CPU and memory usage
   - Look at process states for hung processes

3. **System Administration**
   - Monitor system processes regularly
   - Check for zombie processes
   - Track resource usage patterns

## Common Issues and Solutions

1. **High CPU Usage**
   - Identify with `ps aux --sort=-%cpu`
   - Check process tree for parent process
   - Monitor thread usage

2. **Memory Problems**
   - Check with `ps aux --sort=-%mem`
   - Look for memory leaks
   - Monitor virtual vs resident memory

3. **Zombie Processes**
   - Find with `ps aux | grep Z`
   - Identify parent process
   - Consider restarting parent process

## Related Commands

- `top`: Interactive process viewer
- `htop`: Enhanced interactive process viewer
- `pstree`: Visual process tree
- `kill`: Terminate processes
- `nice`: Run process with modified priority

---

Remember: The ps command is essential for system monitoring and troubleshooting. Combine it with other commands for powerful system analysis! 