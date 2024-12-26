#!/bin/sh -l
set -e

echo "Starting entrypoint script..."
echo "Input argument: $1"

# Create output file if it doesn't exist
touch $GITHUB_OUTPUT

echo "Hello $1"
echo "time=$(date)" >> $GITHUB_OUTPUT

echo "Entrypoint script completed"
