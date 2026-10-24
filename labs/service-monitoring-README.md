# Lab 09: Linux Service Monitoring

## Objective
Use Bash and systemctl to check Linux service status.

## Script
`scripts/service-monitor.sh`

## Features
- Accepts a service name as an argument.
- Defaults to checking `cron`.
- Checks whether the service exists.
- Reports whether the service is active.
- Checks whether it is enabled at startup.
- Returns a nonzero exit status for unavailable or inactive services.

## Usage

Check the default service:

    ./scripts/service-monitor.sh

Check a specified service:

    ./scripts/service-monitor.sh cron

## Test Results

### Existing service
The `cron` service reported:
- Status: `ACTIVE`
- Enabled at startup: `yes`

### Missing service
The `fake-service` test reported:
- Status: `Service not found`
- Exit status: `1`

## Skills Demonstrated
- Bash scripting
- Linux service management
- `systemctl`
- Conditional logic
- Input arguments
- Error handling and exit codes

## Safety
The script reads service status only. It does not start, stop, enable, or disable services.
