#!/bin/bash
#Name:
#  findpeaks.sh: finds largest peak values in USGS water time series files
#
#Usage: findpeaks.sh FILES
#
#Description:
#	Program will find the maximum values in USGS water timeseries files.
#   Files can be downloaded from https://waterdata.usgs.gov/nwis
#

# grab each line beginning with 'USGS', only columns 3-4, sort numerically,
#in reverse, by the second column, and return the first line of the head 
for file in $@
do
    echo $file
    grep ^USGS $file | cut -f 3-4 | sort -n -r -k2 | head -1
    echo 
done

