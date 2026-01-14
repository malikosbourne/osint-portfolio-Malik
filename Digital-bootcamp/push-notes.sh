#!/bin/bash
# Quick script to add, commit, and push bootcamp notes

cd "$(dirname "$0")/.." || exit

# Check if there are changes
if git diff --quiet && git diff --cached --quiet; then
    echo "No changes to commit."
    exit 0
fi

# Add all changes in Digital-bootcamp
git add Digital-bootcamp/

# Get today's date for commit message
DATE=$(date +%Y-%m-%d)

# Commit with date
git commit -m "Update bootcamp notes - $DATE"

# Push
git push

echo "✅ Notes pushed to GitHub!"




