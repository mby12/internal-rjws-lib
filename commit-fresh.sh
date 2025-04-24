#!/bin/bash
git checkout --orphan temp_branch
git add -A
read -p "Enter commit message: " commit_message
git commit -S -m "$commit_message"
git branch -D master
git branch -m master
git push --force origin master