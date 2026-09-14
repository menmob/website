#!/bin/bash
cd /app/jekyll
echo "Building website..."
jekyll build

mv /app/jekyll/_site/index.html /app/jekyll/_site/posts.html
cp /app/jekyll/_site/about.html /app/jekyll/_site/index.html

# if we want to make polyglot file with resume
#cp static /app/jekyll/
#zip website /app/jekyll/* 

echo "Starting webserver..."
nginx -c /app/nginx.conf

