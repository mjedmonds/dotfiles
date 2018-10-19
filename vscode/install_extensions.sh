#!/bin/bash

EXTENSION_FILE="${HOME}/dotfiles/vscode/extensions.txt"

while IFS= read -r extension
do
  code --install-extension "${extension}"
done < "${EXTENSION_FILE}"
