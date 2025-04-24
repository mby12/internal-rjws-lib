#!/bin/bash
git checkout --orphan temp_branch # temp branch
git add -A # add all files
read -p "Enter commit message: " commit_message # prompt commit message
git commit -S -m "$commit_message" # set commit message
git branch -D master # delete branch master
git branch -m master # -- ntah --
git push --force origin master # push (force) ke master