#!/bin/bash
# Used with Unreal version 4.20

UNREAL_PATH=${HOME}/Developer/UnrealEngine;
RANDNUM=$(( ( RANDOM % 1000 ) + 1000 ));
CURR_DIR=`pwd`;
UPROJECT_FILE="$1";
UPROJECT_PATH=$(dirname "${UPROJECT_FILE}");
PROJ_NAME="$(basename "${UPROJECT_FILE%.uproject}")";
#PROJ_NAME_MODULE="${PROJ_NAME},${RANDNUM}";
PROJ_NAME_EDITOR="${PROJ_NAME}Editor"
OUTPUT_BASE_NAME="libUE4Editor-"
N_CPUS=$(grep ^cpu\\scores /proc/cpuinfo | uniq |  awk '{print $4}')

# old method, for versions before 4.20
# CMD="${UNREAL_PATH}/Engine/Build/BatchFiles/Linux/RunMono.sh ${UNREAL_PATH}/Engine/Binaries/DotNET/UnrealBuildTool.exe -ModuleWithSuffix=$PROJ_NAME_MODULE ${PROJ_NAME_EDITOR} Linux Development \"-Project=${UPROJECT}\" -canskiplink \"${UPROJECT}\" -game -progress"

# make using cmake
cmake --build "${UPROJECT_PATH}/cmake-build-debug" --target "${PROJ_NAME_EDITOR}" -- -j ${N_CPUS}

# copy the created files to have the random number appended, this will trigger a hot reload
if [ $? -eq 0 ]; then
  BINARY_BASENAME="${UPROJECT_PATH}/Binaries/Linux/${OUTPUT_BASE_NAME}${PROJ_NAME}"
  cp "${BINARY_BASENAME}.debug" "${BINARY_BASENAME}-${RANDNUM}.debug"
  cp "${BINARY_BASENAME}.so" "${BINARY_BASENAME}-${RANDNUM}.so"
  cp "${BINARY_BASENAME}.sym" "${BINARY_BASENAME}-${RANDNUM}.sym"
  echo "Successfully hot reloaded"
fi

