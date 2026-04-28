#!/bin/bash

FILENAME=$(basename "$1")

echo $FILENAME

# File is already in working directory
Rscript 01_subset.R "$FILENAME"
