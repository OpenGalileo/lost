#!/bin/bash

# echo "Running Lost"
/usr/bin/time -f "Real: %e sec\nMax Memory: %M KB" taskset -c 0-3  ./lost pipeline   --png $1   --focal-length $2   --pixel-size $3   --centroid-algo cog   --centroid-mag-filter 5   --database my-database.dat   --star-id-algo py   --angular-tolerance 0.05   --false-stars 1000   --max-mismatch-prob 0.0001   --attitude-algo dqm   --print-attitude attitude.txt #  --plot-output $4
# echo "Finished Running Lost"l
