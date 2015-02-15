#!/bin/sh

rm -rf ~/work/sae/getdocker/3/* 
bundle exec jekyll build -d ~/work/sae/getdocker/3/
cd ~/work/sae/getdocker/3/
svn add *
svn ci -m 'jekyll deployment'
cd -

