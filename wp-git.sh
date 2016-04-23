#!/bin/bash
cd /data/www/www.goodmemory.cc/goodmemory.cc

git config --global user.name "hiproz"
git config --global user.email hiproz@gmail.com

git add -A
echo "git add done"
git commit -m 'update from wordpress automatically'
echo "git commit done"

git push
echo "git push done"
