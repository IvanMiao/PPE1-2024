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


get_info() {
    local url="$1"

    # Récupérer le code HTTP
    local code_http=$(curl -o /dev/null -s -w "%{http_code}" "$url")

    # Récupérer l'encodage (si présent)
    local encodage=$(curl -sI "$url" | grep -i "Content-Type" | grep -o "charset=[^;]*" | cut -d= -f2)
    if [[ -z "$encodage" ]]; then
        encodage="Inconnu"
    fi

    # Récupérer le contenu et compter les mots
    local contenu=$(curl -s "$url")
    local nombre_mots=$(echo "$contenu" | wc -w)

    # Retourner les informations
    echo -e "${COUNT}\t${url}\t${code_http}\t${encodage}\t${nombre_mots}"
}


COUNT=1

while read -r line;
do
	get_info "${line}"
	((COUNT++))
done < "$1"
