#!/bin/bash
FILE=${1}

echo "cleaning $FILE"

if [[ "$OSTYPE" = "darwin"* ]]; then
  sed -i '' 's/<text text-anchor="middle" font-size="10px" x="50%" y="100%">Viewer does not support full SVG 1.1<\/text>//g' ${FILE}
fi


if [[ "$OSTYPE" = "linux"* ]]; then
  sed -i 's/<text text-anchor="middle" font-size="10px" x="50%" y="100%">Viewer does not support full SVG 1.1<\/text>//gm' ${FILE}
fi