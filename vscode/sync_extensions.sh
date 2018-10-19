#!/bin/bash

EXTENSION_FILE="${HOME}/dotfiles/vscode/extensions.txt"

# write all extensions to file
code --list-extensions >> ${EXTENSION_FILE}

# remove duplicates
awk '!a[$0]++' ${EXTENSION_FILE} > ${EXTENSION_FILE}.tmp
mv ${EXTENSION_FILE}.tmp ${EXTENSION_FILE}