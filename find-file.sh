#!/bin/sh

LIST=( $(find . -name $1) )
NUMLINES=( $(wc -l LIST) )

if [[ $NUMLINES == 0 ]]
then
	echo "Found $NUMLINES matches.\n$LIST"
elif [[ $NUMLINES != 0 ]]
then
	echo "Found 0 matches.\n$LIST"
fi