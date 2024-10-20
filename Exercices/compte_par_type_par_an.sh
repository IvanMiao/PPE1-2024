#! usr/bin/bash

ENTITY=$1

for YEAR in 2016 2017 2018
do
	echo "Annotations en $YEAR pour $ENTITY: "
	bash ./compte_par_type.sh $ENTITY $YEAR
done
