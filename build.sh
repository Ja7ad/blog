#!/bin/bash
dt=$(date '+%d/%m/%Y');

bundle exec jekyll build
cp -r _site/* /home/javad/Project/other/Blog/blog
cd /home/javad/Project/other/Blog/blog
git pull
git add .
git commit -m "Update $dt"
git push origin master
