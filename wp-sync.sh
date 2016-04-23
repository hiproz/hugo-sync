#!/bin/bash
export HOME=/root/

cd /data/wp/wordpress/wp-content/plugins/wordpress-to-hugo-exporter-master/
php hugo-export-cli.php
echo "after export..."

cd /data/www/www.goodmemory.cc/sync/goodmemory.cc/
#cd goodmemory.cc
rm -rf content/post
mv /tmp/wp-hugo-export/post content/
rm -rf /tmp/wp-hugo-export
echo "copy complete"
../update-git.sh
echo "after git"
exit 0

#git pull
rm -rf ../../content/*
\cp * ../../ -rf  
cd ../..
rm -rf public/*
hugo
