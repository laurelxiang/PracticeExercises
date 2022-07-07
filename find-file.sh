#!/bin/sh

LIST=( $(find / -name $1) )
NUMLINES=( $(echo -n "$LIST" | grep -c '^') )

if [[ $NUMLINES == 0 ]]
then
	printf "Found 0 matches\n"
elif [[ $NUMLINES != 0 ]]
then
	printf "Found $NUMLINES matches\n$LIST\n"
fi
