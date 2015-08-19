#!/bin/sh

DIR=~/work/sae/getdocker/1

rm -rf ${DIR}/* 
jekyll build -d $DIR
cd $DIR
svn add *
svn ci -m 'jekyll deployment'
cd -

