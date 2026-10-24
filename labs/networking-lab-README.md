# Lab 12: Linux Networking Diagnostics

## Objective
Inspect Linux network interfaces, test IP connectivity, verify DNS resolution, inspect listening sockets, and test HTTPS connectivity.

## Tools Used
- `ip` — inspect network interfaces and IP addresses
- `ping` — test IP connectivity
- `getent` — test system hostname resolution
- `ss` — inspect listening TCP and UDP sockets
- `curl` — test HTTPS responses
- Bash — automate diagnostic checks

## Implementation
Created `scripts/network-diagnostics.sh` to run the network checks in sequence.

The script displays network interface information, tests connectivity to `1.1.1.1`, resolves `google.com`, lists listening sockets, and sends an HTTPS HEAD request to `https://example.com`.

## Validation Results
- IP connectivity: PASS
- DNS resolution: PASS
- HTTPS request: completed
- Diagnostic script: completed

The connectivity test received 4 out of 4 replies with 0% packet loss during manual testing.

The HTTPS test returned HTTP/2 status 200 during manual testing.

## Skills Demonstrated
- Linux network interface inspection
- IP connectivity troubleshooting
- DNS resolution diagnostics
- TCP and UDP socket inspection
- HTTPS testing with curl
- Bash scripting and command-line automation
EOFcat > labs/networking-lab-README.md <<'EOF'
# Lab 12: Linux Networking Diagnostics

## Objective
Inspect Linux network interfaces, test IP connectivity, verify DNS resolution, inspect listening sockets, and test HTTPS connectivity.

## Tools Used
- `ip` — inspect network interfaces and IP addresses
- `ping` — test IP connectivity
- `getent` — test system hostname resolution
- `ss` — inspect listening TCP and UDP sockets
- `curl` — test HTTPS responses
- Bash — automate diagnostic checks

## Implementation
Created `scripts/network-diagnostics.sh` to run the network checks in sequence.

The script displays network interface information, tests connectivity to `1.1.1.1`, resolves `google.com`, lists listening sockets, and sends an HTTPS HEAD request to `https://example.com`.

## Validation Results
- IP connectivity: PASS
- DNS resolution: PASS
- HTTPS request: completed
- Diagnostic script: completed

The connectivity test received 4 out of 4 replies with 0% packet loss during manual testing.

The HTTPS test returned HTTP/2 status 200 during manual testing.

## Skills Demonstrated
- Linux network interface inspection
- IP connectivity troubleshooting
- DNS resolution diagnostics
- TCP and UDP socket inspection
- HTTPS testing with curl
- Bash scripting and command-line automation
