#!/bin/bash
read -p "Repository name: " repository
mkdir "$repository"
cd "$repository" || exit

git init

user=hernaldomeneses
email=hernaldomeneses@gmail.com
token=$GITHUB_TOKEN
link=https://api.github.com/user/repos

git config --global user.name $user
git config --globar user.email $email


curl -H "Authorization: token $token" -d "{\"name\":\"$repository\",\"private\":false}" "$link"

echo "# New Repositori $repository" > README.md
git add .
git commit -m "$repository"

git remote add origin git@github.com:$user/$repository.git

git branch -m main
git push -u origin main
