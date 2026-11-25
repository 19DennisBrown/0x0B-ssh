#!/usr/bin/env bash
# 2-use_a_private_key.sh: A scripting file that  runs private key to connect into the server.

# Exit script incase of an error.
set -e
echo "Script starting..."
echo
TARGET=$(grep -v '^#' "$(pwd)/server.sh" | tr -d '[:space:]')
ssh -i "$(pwd)/school"  "$TARGET"
echo
echo "Script ended"
echo
