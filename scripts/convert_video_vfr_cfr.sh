#!/bin/bash

input=$1
output=$2
cfr=$3

ffmpeg -i ${input} -r ${cfr} -c:v libx264 -c:a copy -crf 0 ${output}