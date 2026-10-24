# Lab 07: Linux Log Analysis

## Objective
Use Bash and standard Linux command-line utilities to summarize application log entries.

## Files
- `application.log` — simulated practice log data.
- `scripts/log-analysis.sh` — log analysis script.

## What the Script Does
- Accepts a log file path as an optional argument.
- Uses a default practice log when no argument is provided.
- Checks whether the log file exists.
- Counts ERROR, WARNING, and INFO entries.
- Reports the total number of lines.
- Returns exit status 1 if the file does not exist.

## Usage

Analyze the default practice log:

    ./scripts/log-analysis.sh

Analyze another log file:

    ./scripts/log-analysis.sh path/to/application.log

## Test Results

### Valid log file
- ERROR entries: 2
- WARNING entries: 2
- INFO entries: 3
- Total lines: 7

### Missing log file
The script displayed an error message and returned exit status `1`.

## Skills Demonstrated
- Bash scripting
- Log analysis
- `grep` for pattern counting
- `wc` for line counting
- Input validation
- Basic error handling

## Safety
The log file contains simulated practice entries, not production system logs.
The script reads the input file and does not modify it.
