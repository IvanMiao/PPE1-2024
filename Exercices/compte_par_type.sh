#!usr/bin/bash

ENTITY=$1
YEAR=$2

cat ./Exercice1/ann/$YEAR/*/*.ann | grep $ENTITY | wc | awk '{print $1}'
