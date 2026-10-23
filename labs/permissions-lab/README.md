# Lab 02: Linux File Permissions

## Objective
Practise inspecting and changing Linux file permissions.

## Commands Practised

### 1. Create a file
```bash
touch report.txt
```
Creates an empty file named `report.txt`.

### 2. Inspect permissions
```bash
ls -l report.txt
```
Displays the file's permissions, ownership, size, and timestamp.

### 3. Change permissions
```bash
chmod 640 report.txt
```
Sets permissions so the owner can read and write, the group can
read, and other users have no permissions.

### 4. Verify permissions
```bash
stat -c '%A (%a) %n' report.txt
```
Displays symbolic permissions, numeric permissions, and the filename.

## Verified Result
```text
-rw-r----- (640) report.txt
```

## Key Learning
Linux permissions control who can read, modify, or execute files.
The `chmod` command changes permissions, while `ls -l` and `stat`
help verify the result.

## Safety Note
This lab uses a practice file created inside the project directory.
