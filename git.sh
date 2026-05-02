#!/usr/bin/bash

git status
git add .
git status
read -p "Commit Name :- " commit_name
git commit -a -m "${commit_name}"
git status
git push

