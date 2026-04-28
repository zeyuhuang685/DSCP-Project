#!/bin/bash 

# Keep header from first file
head -n 1 /home/groups/STAT_DSCP/Group4_NYCTaxi/extracted/fhvhv_tripdata_2021-01.csv > merged.csv

# Append all rows except header from all files
tail -n +2 -q /home/groups/STAT_DSCP/Group4_NYCTaxi/extracted/fhvhv_tripdata_2021-*.csv >> merged.csv
