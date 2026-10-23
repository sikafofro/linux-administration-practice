# Lab 06: Automated Linux Backups

## Objective
Automate copying and verifying a practice directory using Bash.

## Script
`scripts/backup-lab.sh`

## What It Does
- Accepts a source directory argument or uses a default.
- Checks that the source directory exists.
- Creates a timestamped backup directory.
- Copies files while preserving file attributes.
- Compares the source and backup with `diff -qr`.
- Reports success or returns an error status.

## Usage

Back up the default practice directory:

    ./scripts/backup-lab.sh

Back up a different directory:

    ./scripts/backup-lab.sh path/to/directory

## Test Results
The script successfully backed up:

    labs/users-groups-lab/team-files

The backup was created under `backups/` with a timestamped directory name. The script reported:

    Backup completed and verified.

A separate comparison using `diff -qr` was performed to check that the source and backup matched.

## Skills Demonstrated
- Bash scripting
- Directory validation
- Timestamped backup naming
- File copying with `cp -a`
- Backup verification with `diff`
- Basic error handling

## Safety
This exercise uses a practice directory inside the repository. The script copies files and does not delete or modify the source.
