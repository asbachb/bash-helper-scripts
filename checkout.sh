#!/bin/bash

git fetch --all --prune

BRANCH=`git branch -la | grep $1 | head -1 | tr -d '*' | cut -d " " -f3`
if [[ $BRANCH == remotes/origin* ]];
then
  BRANCH=${BRANCH//'remotes/origin/'}
fi

git checkout $BRANCH
