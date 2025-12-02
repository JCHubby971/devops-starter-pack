#!/bin/bash

# Script: loops.sh
# Objectif: montrer comment utiliser des boucles en Bash

echo "🔁 Boucle FOR sur les fichiers du dossier linux-basics :"

for FILE in linux-basics/*; do
    echo "➡️  Fichier trouvé : $FILE"
done

echo ""
echo "⏳ Boucle WHILE compteur :"

COUNT=1
while [ $COUNT -le 5 ]; do
    echo "Compteur : $COUNT"
    COUNT=$((COUNT + 1))
done