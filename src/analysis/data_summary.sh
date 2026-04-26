#!/bin/bash 

FILENAME=$(basename "$1")
STAGING_PATH="/home/groups/STAT_DSCP/Group4_NYCTaxi/$FILENAME"

echo $FILENAME
echo $STAGING_PATH

#cp "$STAGING_PATH" "$FILENAME"

if [ ! -s "$FILENAME" ]; then
    echo "ERROR: File copy from staging failed or file is empty"
    exit 1
fi

Rscript data_summary.R "$STAGING_PATH"

#
