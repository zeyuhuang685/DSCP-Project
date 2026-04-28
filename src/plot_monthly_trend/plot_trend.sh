#!/bin/bash

FILENAME=$(basename "$1")

echo $FILENAME

Rscript plot_trend.R "$FILENAME"
