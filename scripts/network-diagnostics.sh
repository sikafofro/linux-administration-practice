#!/usr/bin/env bash

set -u

echo "=================================="
echo " Linux Network Diagnostics"
echo "=================================="
echo
echo "1. Network interfaces and IP addresses"
ip -brief address

echo
echo "2. Connectivity test to 1.1.1.1"
if ping -c 4 -W 2 1.1.1.1; then
    echo "Connectivity test: PASS"
else
    echo "Connectivity test: FAIL"
fi

echo
echo "3. DNS resolution for google.com"
if getent hosts google.com; then
    echo "DNS resolution: PASS"
else
    echo "DNS resolution: FAIL"
fi

echo
echo "4. Listening TCP and UDP sockets"
ss -tuln

echo
echo "5. HTTPS response from example.com"
if curl -sS -I --max-time 10 https://example.com; then
    echo "HTTPS request completed"
else
    echo "HTTPS request: FAIL"
fi

echo
echo "Diagnostics complete."
