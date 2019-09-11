#!/bin/bash
# Used with Unreal version 4.20

UNREAL_PATH=${HOME}/Developer/UnrealEngine;
RANDNUM=$(( ( RANDOM % 1000 ) + 1000 ));
UPROJECT_FILE="$1";
UPROJECT_PATH=$(dirname "${UPROJECT_FILE}");
PROJ_NAME="$(basename "${UPROJECT_FILE%.uproject}")";
#PROJ_NAME_MODULE="${PROJ_NAME},${RANDNUM}";
PROJ_NAME_EDITOR="${PROJ_NAME}Editor"
OUTPUT_BASE_NAME="libUE4Editor-"

# copy the created files to have the random number appended, this will trigger a hot reload
if [ $? -eq 0 ]; then
  BINARY_BASENAME="${UPROJECT_PATH}/Binaries/Linux/${OUTPUT_BASE_NAME}${PROJ_NAME}"
  cp "${BINARY_BASENAME}.debug" "${BINARY_BASENAME}-${RANDNUM}.debug"
  cp "${BINARY_BASENAME}.so" "${BINARY_BASENAME}-${RANDNUM}.so"
  cp "${BINARY_BASENAME}.sym" "${BINARY_BASENAME}-${RANDNUM}.sym"
  echo "Successfully hot reloaded"
fi

# example of integrating this directly into cmake (see end to force hot reload)
#add_custom_target(QuickStartEditor cd "/home/mark/Developer/UnrealEngine" && bash "/home/mark/Developer/UnrealEngine/Engine/Build/BatchFiles/Linux/Build.sh" QuickStartEditor Linux Development "-project=/home/mark/Documents/Unreal Projects/QuickStart/QuickStart.uproject" -game -progress -buildscw VERBATIM && bash "/home/mark/dotfiles/unreal_engine/ue4hot_reload.sh" "/home/mark/Documents/Unreal Projects/QuickStart/QuickStart.uproject")
