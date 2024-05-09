#!/bin/bash

echo "=================="

# Configure git with environment variables
git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

# Execute the Python script
python3 /usr/bin/feed.py  # Correct the path here

# Git commands to add, commit, and push changes
git add -A && git commit -m "Update Feed"
git push --set-upstream origin main

echo "=================="
