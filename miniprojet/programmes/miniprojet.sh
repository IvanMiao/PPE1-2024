#!/usr/bin/env bash

# Vérifier qu'un argument a été fourni
if [ $# -eq 0 ]; then
    echo "Erreur : Veuillez fournir un fichier en argument"
    echo "Usage : $0 <fichier>"
    exit 1
fi

# Vérifier que le fichier existe et est lisible
if [ ! -f "$1" ] || [ ! -r "$1" ]; then
    echo "Erreur : Le fichier '$1' n'existe pas ou n'est pas lisible"
    exit 1
fi

COUNT=1

while read -r line;
do
  echo -e "${COUNT}\t${line}";
  ((COUNT++))
done < "$1"
