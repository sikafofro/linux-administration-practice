# Lab 11: Cron Job Automation

## Objective
Configure and test a scheduled task using cron on Linux.

## Tools and Concepts
- cron and crontab
- Bash scripting
- Scheduled task automation
- Log files and timestamps
- Task verification and cleanup

## Implementation
Created a Bash script at `scripts/cron-heartbeat.sh` that appends the current date and time to a log file.

The script was tested manually and then scheduled to run every minute using a user crontab entry:

`* * * * * /home/sikafofro/linux-practice/scripts/cron-heartbeat.sh`

## Validation
Confirmed that the heartbeat log received new timestamp entries automatically at approximately one-minute intervals.

Example:

    Cron job ran at: 2026-10-24 08:12:01
    Cron job ran at: 2026-10-24 08:13:01
    Cron job ran at: 2026-10-24 08:14:01

## Cleanup
Removed the temporary crontab entry after confirming that scheduled execution worked.

## Skills Demonstrated
- Creating and executing Bash scripts
- Scheduling recurring Linux tasks
- Verifying automated execution through logs
- Managing and cleaning up cron jobs
