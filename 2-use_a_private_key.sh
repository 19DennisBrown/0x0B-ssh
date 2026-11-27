#!/usr/bin/env bash
# 2-use_a_private_key.sh: A scripting file that  runs private key to connect into the server.

# Exit script incase of an error.
set -e
echo "Script starting..."
echo
ssh -i "$(pwd)/school"  dennism@144.217.6.26
echo
