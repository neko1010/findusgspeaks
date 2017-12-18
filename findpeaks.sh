for file in $@
do
    echo $file
    grep ^USGS $file | cut -f 3-4 | sort -n -r -k2 | head -1
    echo 
done
# grab each line beginning with 'USGS', only columns 3-4, sort numerically, in reverse, by the second column, and return the first line of the head# :

