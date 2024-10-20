#! usr/bin/bash

YEAR=$1
MONTH=$2
NUM=$3

cat ./Exercice1/ann/$YEAR/$MONTH/*.ann | grep Location | cut -f3 | sort | uniq -c | sort -nr | head -n $NUM
