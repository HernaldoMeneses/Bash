#!/bin/bash
read -p "Repository to delete name: " repository

user=hernaldomeneses
token=$GITHUB_TOKEN
link=https://api.github.com/repos


curl -X DELETE -H "Authorization: token $token" "$link/$user/$repository"
