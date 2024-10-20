#!usr/bin/bash

ENTITY=$1
YEAR=$2

if ! [[ "$YEAR" =~ ^(2016|2017|2018)$ ]]; then
	echo "ERROR! Enter a new year."
	exit 1
fi

cat ./Exercice1/ann/$YEAR/*/*.ann | grep $ENTITY | wc | awk '{print $1}'
