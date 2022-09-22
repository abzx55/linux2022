#!/bin/bash
#
# Read text file content
# Synopsys: ./reader.sh <filename>
# If no filename is given, standard input will be read as output
# ctrl+c to exit
#
#
# Set filename as variable
file=$1
# Check if file exists print every line of it
# otherwise print every line of standard input
if [[ "$file" == "" || (! -f "$file") ]]
then
    echo Using standard input...
    file="/dev/stdin"
fi
# Output
while read -r line
do
    echo "$line"
done < "${file}"
exit 0
