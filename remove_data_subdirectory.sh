#!/bin/bash

# copy this script to images folder before execute
# Find all "data" directories
find . -type d -name "data" | while read -r data_dir; do
    parent_dir=$(dirname "$data_dir")
    
    # Move all files from data directory to parent directory
    mv "$data_dir"/* "$parent_dir"/
    
    # Remove the now empty data directory
    rmdir "$data_dir"
done

echo "All images have been moved to their parent directories and 'data' subdirectories have been removed."

