#!/bin/bash
read -p "Repository name: " repository

user=hernaldomeneses
email=hernaldomeneses@gmail.com
link=https://api.github.com/user/repos

git config --global user.name $user
git config --globar user.email $email

git add .
git commit -m "$repository"

git remote add origin git@github.com:$user/$repository.git

git branch -m main
git push -u origin main
