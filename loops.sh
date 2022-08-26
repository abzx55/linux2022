#!/bin/bash
# Loops
#
# <<< FOR LOOPS >>>
echo ########################################
echo For loops
#
# Iterate from 1 to 5 and print the numbers
echo Display an defined sequence of numbers
for i in 1 2 3 4 5; do
    echo Number=$i
done
#
# Same but the sequence is generated
echo Display an generated sequence of numbers
for i in {1..5}; do
    echo Number=$i
done
#
# Same but use a more conventional format
# the double parenthesis is required to perform arithmetic operations
echo Display a sequence generated using a 3-for expression
for(( i=1; i<=5; i++ ))
do
    echo Number=$i
done
#
# Print out the last line of each shell script in the current directory
echo Print out the last line of each shell script
for FILE in *.sh
do
    echo .....................................
    echo File=[$FILE]
    tail -n 1 $FILE
done
#
echo ''
#
# <<< WHILE LOOP >>>
echo ########################################
echo While loop
#
# Countdown
echo While loop countdown from 5 to 0
counter=5
while [[ $counter -gt 0 ]]; do
    echo Countdown [$counter]
    counter=$(($counter - 1))
done
echo Loop examples completed!
# END #
