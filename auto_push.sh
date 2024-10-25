#!/bin/bash
cd "C:\Users\user\Desktop\operating-systems\operating-systems"

if [[ -n $(git status --porcelain) ]]; then
    echo "Changes detected. Enter a commit message: "
    read commit_message

    git add .
    git commit -m "$commit_message"
    git push origin main
else
    echo "No changes to commit."
fi
