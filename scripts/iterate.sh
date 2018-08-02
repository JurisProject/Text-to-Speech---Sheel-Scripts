#!/bin/bash

NAME=$1

for filename in ./split/*.txt; do
    [ -e "$filename" ] || continue
    # ... rest of the loop body

    sh ./scripts/text2speach.sh $filename;
done

mkdir ./output;

sh ./scripts/ffmpeg.sh $NAME