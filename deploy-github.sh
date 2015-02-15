#!/bin/sh

DIR=/tmp/getdocker_site


git add .
git commit -m '.'
git push origin gh-pages

rm -rf $DIR
bundle exec jekyll build -d /tmp/_site

git checkout master
cp -r /tmp/_site/* .
git add .
git commit -m '.'
git push origin master

git checkout gh-pages

