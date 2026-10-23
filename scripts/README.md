# Lab 05: Bash File Audit Script

## Objective
Automate basic Linux file checks using a Bash script.

## What It Checks
- Whether the target exists
- Whether the target is a regular file
- File owner and group
- File permissions in numeric and symbolic formats
- File size in bytes

## Usage

Audit the default practice file:

    ./scripts/file-audit.sh

Audit a specified file:

    ./scripts/file-audit.sh path/to/file

## Implementation
- Bash interpreter and basic error handling
- Command-line arguments and default paths
- Conditional file validation
- `stat` for file metadata
- Exit status `1` for invalid targets

## Test Results

### Existing file
- Owner: `sikafofro`
- Group: `sikafofro`
- Permissions: `600 (-rw-------)`
- Size: `27 bytes`

### Missing file
The missing-file test was performed. Expected behavior is an error message and exit status `1`.

## Skills Demonstrated
- Bash scripting
- Command-line arguments
- Conditional logic
- File validation
- Linux file metadata
- Basic error handling

## Safety
The script reads file metadata only. It does not modify the target file.
