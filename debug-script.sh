#!/bin/sh

#counter
COUNT=0
#program result variable
PRGM=$(./problematic-script.sh 2>&1)

#while loop until failure
while [ $? -eq 0 ]
do 
	COUNT=$(( $COUNT + 1 ))
	PRGM=$(./problematic-script.sh 2>&1)
done

STDOUT=$(echo -e "$PRGM" | sed -n '1p')
STDERR=$(echo -e "$PRGM" | sed -n '2p')

printf "It took $COUNT runs to fail.\nStandard Output:\n$STDOUT\nStandard Error:\n$STDERR\n\n"
