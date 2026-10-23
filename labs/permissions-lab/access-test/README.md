# Lab 04: Troubleshooting Linux Permission Errors

## Objective
Reproduce, diagnose, and resolve a file access permission error.

## Steps Performed

### 1. Inspect the file
```bash
ls -l labs/permissions-lab/access-test/secret.txt
stat -c 'Owner: %U | Group: %G | Permissions: %a (%A)' \
labs/permissions-lab/access-test/secret.txt
```
The file was owned by `sikafofro` with permissions `600`.

### 2. Remove all permissions temporarily
```bash
chmod 000 labs/permissions-lab/access-test/secret.txt
```
This removed read, write, and execute permissions for everyone.

### 3. Reproduce the error
```bash
cat labs/permissions-lab/access-test/secret.txt
```
Observed result:
`Permission denied`

### 4. Restore access
```bash
chmod 600 labs/permissions-lab/access-test/secret.txt
```

### 5. Verify recovery
```bash
stat -c '%A (%a) %n' \
labs/permissions-lab/access-test/secret.txt
```
Verified result:
`-rw------- (600)`

## Troubleshooting Lesson
When a user encounters a file permission error:
1. Identify the file and the user attempting access.
2. Inspect ownership and permissions with `ls -l` or `stat`.
3. Determine which permission is missing.
4. Apply the minimum necessary permission change.
5. Verify that access works as intended.

## Safety
The exercise used a practice file inside this repository.
No system files or account permissions were changed.
