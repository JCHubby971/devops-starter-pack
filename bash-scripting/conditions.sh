#!/bin/bash

# Script: conditions.sh
# Objectif: démonstration des conditions en Bash

PATH_TO_CHECK=$1

if [ -d "$PATH_TO_CHECK" ]; then
    echo "📁 Le dossier existe : $PATH_TO_CHECK"
    exit 0
elif [ -f "$PATH_TO_CHECK" ]; then
    echo "📄 C'est un fichier : $PATH_TO_CHECK"
    exit 0
else
    echo "❌ Rien trouvé à cet emplacement."
    exit 1
fi