#!/bin/bash
user=hernaldomeneses
link=https://api.github.com/users/$user/repos
curl -s $link?per_page=100 | jq -r '.[].name'
