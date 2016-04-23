#!/bin/bash
git config --global user.name "hiproz"
git config --global user.email hiproz@gmail.com

cd /data/www/www.goodmemory.cc/sync/goodmemory.cc
git add -A
echo "add"
git commit -m 'update from wordpress automatically'
echo "commit"

git push
echo "push"
