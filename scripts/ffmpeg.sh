#!/bin/bash

NAME=$1

for f in ./split/*.mp3; do echo "file '$f'" >> ./audiolist.txt; done

ffmpeg -f concat -safe 0 -i ./audiolist.txt -c copy ./output/$NAME.mp3;