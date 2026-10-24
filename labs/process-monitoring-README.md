# Lab 10: Linux Process Monitoring

## Objective
Use Bash and Linux process utilities to find processes and inspect their resource usage.

## Script
`scripts/process-monitor.sh`

## Features
- Accepts a process name as an argument.
- Defaults to searching for `cron`.
- Reports matching process IDs (PIDs).
- Displays process names, CPU usage, and memory usage.
- Reports when no matching process is found.
- Returns exit status `1` when no match exists.

## Usage

Search for the default process:

    ./scripts/process-monitor.sh

Search for a specific process:

    ./scripts/process-monitor.sh cron

## Test Results

### Existing process
The `cron` process was found:
- PID: `113`
- CPU usage: `0.0%`
- Memory usage: `0.0%`

### Missing process
The `fake-process` test reported no matching process and returned exit status `1`.

## Skills Demonstrated
- Bash scripting
- Process inspection with `ps`
- Filtering with `awk`
- Process IDs and resource usage
- Input arguments
- Error handling and exit codes

## Safety
The script reads process information only. It does not terminate or modify processes.
