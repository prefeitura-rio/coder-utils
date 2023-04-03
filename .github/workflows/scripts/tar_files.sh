#!/bin/bash

# Create output directory
mkdir -p ./output

# Iterate over directories in the `./templates` directory
for dir in ./templates/*; do
    # If it's not a directory, skip it
    if [ ! -d "$dir" ]; then
        continue
    fi
    # Get the name of the directory
    dir_name=$(basename $dir)
    # Create a tar file of the files in the directory
    tar -czf ./output/$dir_name.tar -C $dir .
done