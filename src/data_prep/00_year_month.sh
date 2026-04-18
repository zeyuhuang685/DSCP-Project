#!/bin/bash

file=year_month.txt

if [ -f "$file" ] ; then
    rm "$file"
fi

for year in $(seq 2021 2025); do
    for month in $(seq -w 1 12); do
        echo "$year $month" >> year_month.txt
    done
done

command=$(cat year_month.txt | wc -l)

echo 
echo "========================"
echo "$command lines have been added to year_month.txt."
echo "========================"
echo
