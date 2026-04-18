#!/bin/bash

year=$1
month=$2

URL="https://d37ci6vzurychx.cloudfront.net/trip-data/fhvhv_tripdata_${year}-${month}.parquet"
FILENAME=$(basename "$URL")
DESTINATION=/home/groups/STAT_DSCP/Group4_NYCTaxi/$FILENAME


if [ ! -f "$DESTINATION" ]; then
    wget -P /home/groups/STAT_DSCP/Group4_NYCTaxi/ "$URL"
else
    echo "File already exists, skipping download"
fi
