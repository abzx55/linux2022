#!/bin/bash
# If conditions

if [[ -d /home/ ]]; then
	echo The directory /home/ exists
fi

# Display a message telling if a file exists
if [[ -e test.txt ]]; then
	echo The file test.txt exists
else
	echo The file test.txt does NOT exist
fi

#  Display the value of a variable
VAR="word"
if [[ $VAR == "word" ]]; then
	echo VAR has a value of "test"
elif [[ $VAR == "" ]]; then
	echo VAR has a value of "nothing"
else
	echo VAR has an unknown value
fi
