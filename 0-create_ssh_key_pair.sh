#!/usr/bin/env bash
# createk.sh: Script file  that creates a n SSH key pair

#Exit incase of error - abort execution
set -e
echo "Script starting..."
echo
ssh-keygen -t rsa -b 4096

echo
