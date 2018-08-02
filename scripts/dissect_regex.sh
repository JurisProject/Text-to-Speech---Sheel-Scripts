#!/bin/bash

FILE=$1
content="$(<$FILE)"
re="(?:\n\r)((.|\n|\r){1,5000})(?:\n\r)"

if [[ $content =~ $re ]]; 
    then echo ${BASH_REMATCH[0]};
fi

echo $re;

echo $filecount

# for filename in $DIR/*.*; do
#     [ -e "$filename" ] || continue
#     # ... rest of the loop body

#     sh text2speach.sh $filename;
# done