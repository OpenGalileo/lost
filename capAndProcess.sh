#!/bin/bash

EXPOSURE=${1:-50000}
GAIN=${2:-4}

timestamp="${EXPOSURE}_${GAIN}_$(date +%H%M%S)"
time rpicam-still -o temp.png --shutter $EXPOSURE --gain $GAIN --immediate -n 2>&1
convert temp.png $timestamp.png
./lost pipeline --png $timestamp.png --focal-length 25 --pixel-size 1.55 --centroid-algo cog --centroid-mag-filter 5 --database my-database.dat --plot-output temp_annotated.png --star-id-algo py --angular-tolerance 0.05 --false-stars 1000 --max-mismatch-prob 0.0001 --attitude-algo dqm --print-attitude $timestamp.txt
cat $timestamp.txt
