# Lab 03: Linux Users and Groups

## Objective
Inspect the current Linux user, group memberships, and file ownership.

## Commands Practised

### 1. Identify the current user
```bash
whoami
```
Displays the username of the current account.

### 2. Inspect user and group IDs
```bash
id
```
Displays the current user's UID, primary GID, and supplementary groups.

### 3. List group memberships
```bash
groups
```
Displays the groups associated with the current user.

### 4. Create a team-files directory and practice file
```bash
mkdir -p labs/users-groups-lab/team-files
touch labs/users-groups-lab/team-files/team-notes.txt
```
Creates a directory for the exercise and an empty practice file.

### 5. Inspect file ownership and permissions
```bash
ls -l labs/users-groups-lab/team-files/team-notes.txt
```

## Verified Results
- Current user: `sikafofro`
- UID: `1000`
- Primary group: `sikafofro` (GID `1000`)
- Practice file owner: `sikafofro`
- Practice file group: `sikafofro`
- Practice file permissions: `644` (`-rw-r--r--`)

## Key Learning
Linux users identify accounts, groups help organise access,
and file ownership and permissions control access to resources.

## Safety
This exercise uses a directory and file inside the project.
No system users or groups were modified.
