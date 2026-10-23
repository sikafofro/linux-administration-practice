# Lab 01: Linux Filesystem Basics

## Objective
Practise navigating the Linux filesystem and inspecting files
and directories.

## Commands Practised

### 1. Print Working Directory
```bash
pwd
```
Purpose: Displays the current working directory.

### 2. List Files
```bash
ls -la
```
Purpose: Lists files, including hidden files, with detailed information.

### 3. Create a Directory
```bash
mkdir -p test-directory
```
Purpose: Creates the directory if it does not already exist.

### 4. Create a File
```bash
touch test-directory/example.txt
```
Purpose: Creates an empty file if it does not exist.

### 5. Inspect a File
```bash
ls -l test-directory/example.txt
stat test-directory/example.txt
```
Purpose: Displays file details, including permissions, ownership,
size, and timestamps.

## Practice Results

- Confirmed the working directory using `pwd`.
- Listed directory contents using `ls -la`.
- Created `test-directory` using `mkdir -p`.
- Created `test-directory/example.txt` using `touch`.
- Verified the file using `ls -l` and `stat`.
- Confirmed that the file is empty (0 bytes).
- Observed permissions of 0644 (`-rw-r--r--`).

## Troubleshooting and Observations

- `mkdir -p` can be rerun if the directory already exists.
- `touch` creates an empty file if it does not exist.
- `stat` displays detailed file metadata.

## Key Learning

Linux command-line tools can be used to navigate directories,
create files, inspect metadata, and verify filesystem operations.
