#!/bin/sh

LIST=( $(find . -name $1) )
NUMLINES=( $(echo -n "$LIST" | grep -c '^') )

if [[ $NUMLINES == 0 ]]
then
	echo "Found 0 matches."
elif [[ $NUMLINES != 0 ]]
then
	echo "Found $NUMLINES matches.\n$LIST"
fi