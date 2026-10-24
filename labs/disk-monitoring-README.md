# Lab 08: Linux Disk Usage Monitoring

## Objective
Monitor filesystem disk usage and display warnings when a configurable threshold is reached.

## Script
`scripts/disk-usage-monitor.sh`

## Features
- Uses `df` to retrieve filesystem usage.
- Accepts a threshold between 1 and 100.
- Defaults to an 80% warning threshold.
- Flags filesystems at or above the threshold.
- Rejects invalid thresholds with exit status `1`.

## Usage

Use the default 80% threshold:

    ./scripts/disk-usage-monitor.sh

Set a custom threshold:

    ./scripts/disk-usage-monitor.sh 90

## Test Results

### Low threshold
A 1% threshold flagged filesystems at or above 1%, as expected.

### Invalid threshold
A threshold of 150 was rejected with an error message and exit status `1`.

### Normal threshold
An 80% threshold was selected for the normal monitoring test.

## Skills Demonstrated
- Bash scripting
- Filesystem monitoring with `df`
- Input validation
- Conditional logic
- Command-line arguments
- Basic error handling

## Safety
The script reads filesystem usage information only. It does not modify disks, partitions, or filesystems.

