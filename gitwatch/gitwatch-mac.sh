#!/bin/bash

REMOTE=$1
BRANCH=$2
TARGET=$3

cd ${TARGET}
fswatch -0 -e '\.git' . | while read -d "" event
do
  # git add ${event} && git commit -m `date +%s` && git push ${REMOTE} ${BRANCH}
  git add ${event} && git commit -m `date +%s`
done