#!/bin/bash

# Exit on error
set -e

# The filename is the first argument passed from the .sub file
CSV_FILE=$1

# Run the R script
# We pass the filename again so R can use commandArgs()
Rscript analysis.R "$CSV_FILE"
