# Lab 11: Cron Job Automation

## Objective

Configure, schedule, verify, and safely remove a recurring Linux task using cron.

## Environment

- Operating system: Ubuntu on Windows Subsystem for Linux (WSL)
- Script: `scripts/cron-heartbeat.sh`
- Scheduler: User crontab
- Schedule: Once per minute during testing

## Tools and Concepts

- Cron and crontab
- Bash scripting
- Recurring task automation
- Log files and timestamps
- Scheduled execution verification
- Cleanup of temporary scheduled tasks

## Implementation

Created a Bash script at `scripts/cron-heartbeat.sh` that appends the current date and time to a heartbeat log.

The script was tested manually before being scheduled through the user's crontab.

Cron entry used during the exercise:

```cron
* * * * * /home/sikafofro/linux-practice/scripts/cron-heartbeat.sh
```

This schedule requests execution once per minute. The script must have appropriate execute permissions, a valid shebang, and a writable log destination.

## Validation

The heartbeat log was checked for new timestamp entries produced by scheduled execution.

Recorded example output:

```text
Cron job ran at: 2026-10-24 08:12:01
Cron job ran at: 2026-10-24 08:13:01
Cron job ran at: 2026-10-24 08:14:01
```

The entries demonstrate successive runs at approximately one-minute intervals during the recorded test.

### Useful verification commands

Inspect the current user's scheduled tasks:

```bash
crontab -l
```

Inspect the script and its permissions:

```bash
ls -l /home/sikafofro/linux-practice/scripts/cron-heartbeat.sh
```

Inspect the heartbeat log using the actual path configured in the script:

```bash
tail -n 10 /path/to/heartbeat.log
```

Replace `/path/to/heartbeat.log` with the log file path defined in `cron-heartbeat.sh`.

## Cleanup

After confirming scheduled execution, the temporary crontab entry was removed.

When modifying a crontab, preserve unrelated entries. Use `crontab -e` to edit the schedule and `crontab -l` to verify the final configuration.

## Troubleshooting Notes

If a scheduled task does not run, check:

- The script's absolute path and execute permissions.
- The script's shebang and syntax.
- Whether the cron service is available in the environment.
- Whether the log destination is writable.
- Whether commands rely on environment variables or relative paths unavailable to cron.

Cron jobs often run with a limited environment, so absolute paths are recommended.

## Skills Demonstrated

- Writing and executing Bash scripts
- Scheduling recurring Linux tasks
- Inspecting crontab entries
- Verifying automation through timestamped logs
- Troubleshooting scheduled execution
- Cleaning up temporary cron configuration

## Result

Successfully tested a recurring heartbeat task and verified its execution through timestamped log entries before removing the temporary schedule.
