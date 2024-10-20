#! usr/bin/bash

YEAR=$1
MONTH=$2
NUM=$3

if ! [[ $YEAR =~ ^2016|7|8$ ]]; then
	echo "ERROR! Enter a new year."
	exit 1
fi

if ! [[ $MONTH =~ ^((0[1-9])|(1[0-2]))$ ]]; then
	echo "ERROR! Enter a new month."
	exit 1
fi

cat ./Exercice1/ann/$YEAR/$MONTH/*.ann | grep Location | cut -f3 | sort | uniq -c | sort -nr | head -n $NUM
