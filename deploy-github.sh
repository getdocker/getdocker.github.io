#!/bin/sh

DIR=/tmp/getdocker_site


git add .
git commit -m '.'
git push origin gh-pages

rm -rf $DIR
jekyll build -d $DIR

git checkout master
cp -r ${DIR}/* .
git add .
git commit -m '.'
git push origin master

git checkout gh-pages

