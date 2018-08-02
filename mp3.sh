#!/bin/bash

TEXT=$1

defaultname="output"
NAME=${2:-defaultname}

# Dissect it into smaller speech files
sh ./scripts/dissect.sh $TEXT

# Create MP3 Files and Concatenate
sh ./scripts/iterate.sh $NAME

# Clean up!
sh ./scripts/cleanup.sh