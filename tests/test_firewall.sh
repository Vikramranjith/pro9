#!/bin/bash

set -euo pipefail

# Test 1 & 2: Open ports 8080 and 9000
firewall-cmd --add-port=8080/tcp
firewall-cmd --add-port=9000/tcp

# Test 3: List configured ports
firewall-cmd --list-ports

# Test 4: Remove port 8080
firewall-cmd --remove-port=8080/tcp

# Test 5: Permanently open port 3000
firewall-cmd --add-port=3000/tcp --permanent

# Test 6: Reload firewall
firewall-cmd --reload
