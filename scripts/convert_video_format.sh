#!/bin/bash

ffmpeg -i $1 -c:v libx264 -profile:v high -crf 10 -pix_fmt yuv420p -acodec aac -strict -2 -threads 20 video.mp4