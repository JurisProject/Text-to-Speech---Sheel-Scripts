#!/bin/bash

FILE=$1

IFS=$'\n' read -rd '' -a cont <<<"$(<$FILE)"

# echo $cont

# mkdir 'split'

count=1
char=0
text=''
filecount=0
newline=$'\n\n'

if [ -f "./split/*.txt" ] ; then
    rm "./split/*.txt"
fi

for element in "${cont[@]}"
do
    # echo "$element"
    (( char += ${#element} ))
    

    if [ $char -gt 4000 ]
    then
        (( char -= ${#element} ))
        # echo $char
        char=0
        (( filecount++ ))

        # write to file
        # tee split/$filecount.txt <<< $text
        # Adding leading zero for proper sorting
        if [ $filecount -lt 10 ]
        then
            echo "${text}" >> split/0$filecount.txt
        else
            echo "${text}" >> split/$filecount.txt
        fi

        text=''
    else
        text="${text}${newline}${element}"
    fi
    (( count++ ))
done

echo $filecount

# for filename in $DIR/*.*; do
#     [ -e "$filename" ] || continue
#     # ... rest of the loop body

#     sh text2speach.sh $filename;
# done