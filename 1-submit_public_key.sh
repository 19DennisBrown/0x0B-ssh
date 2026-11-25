#!/usr/bin/env bash
# 1-submit_public_key.sh:  Displays  public key as part of ssh key pair.
# Exit script incase of any  error
set -e
echo 
echo "Public key:"
echo
cat "$(pwd)/school.pub"
echo
echo "REMINDER: Send  ONLY  this public key. Never share your private key."
echo
