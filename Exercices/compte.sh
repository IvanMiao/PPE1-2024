#!usr/bin/bash

for YEAR in 2016 2017 2018
do
	echo "Annotations en $YEAR: "
	wc ./Exercice1/ann/$YEAR/*/*.ann | grep total | awk '{print $1}'
done	
