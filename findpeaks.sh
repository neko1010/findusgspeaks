#!/bin/bash
#Name:
#  findpeaks.sh: finds largest peak values in USGS water time series files
#
#Usage: findpeaks.sh FILES
#
#Description:
#	Longer description

# grab each line beginning with 'USGS', only columns 3-4, sort numerically,
#in reverse, by the second column, and return the first line of the head 
#dummy line
for file in $@
do
    echo $file
    grep ^USGS $file | cut -f 3-4 | sort -n -r -k2 | head -1
    echo 
done

