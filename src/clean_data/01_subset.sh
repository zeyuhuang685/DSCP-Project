#!/bin/bash

FILENAME=$(basename "$1")
STAGING_PATH="/home/groups/STAT_DSCP/Group4_NYCTaxi/$FILENAME"

echo $FILENAME
echo $STAGING_PATH 

Rscript 01_subset.R "$STAGING_PATH"
