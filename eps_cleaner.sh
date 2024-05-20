#!/bin/bash

# A simple shell script that uses GhostScript
# to cleanup EPS files and reduce their size.

# Make an "output" directory
mkdir -p output

# Loop through all the EPS files in the current directory
for f in *.eps; do
    echo "$f"
    gs -o "output/$f" -sDEVICE=ps2write -dEPSCrop "$f"
done