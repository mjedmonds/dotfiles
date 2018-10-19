#!/bin/bash

HOSTNAME=$(hostname)

/usr/local/bin/gitwatch -r origin -b auto-commit ~/Dropbox/Developer/${HOSTNAME}-repos/markdown-notes &> /tmp/gitwatch-markdown-notes.log &
/usr/local/bin/gitwatch -r origin -b auto-commit ~/Dropbox/Developer/${HOSTNAME}-repos/markdown-notes/projects/OpenLock-markdown-notes &> /tmp/gitwatch-OpenLock-markdown-notes.log &