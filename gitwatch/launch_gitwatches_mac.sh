#!/bin/bash

HOSTNAME=$(hostname)

echo $PWD

./gitwatch-mac.sh origin auto-commit "/Users/mark/Dropbox/Developer/${HOSTNAME}-repos/markdown-notes" &
./gitwatch-mac.sh origin auto-commit "/Users/mark/Dropbox/Developer/${HOSTNAME}-repos/markdown-notes/projects/OpenLock-markdown-notes" &