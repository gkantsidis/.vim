#!/bin/bash

remotes=`git remote`
if [[ $remotes == *"official"* ]]; then
  echo "remotes setup correctly"
else
  git remote add --tags official https://github.com/jbe/.vim
  git fetch official
fi
