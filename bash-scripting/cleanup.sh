#!/bin/bash

# Script: cleanup.sh
# Objectif: supprimer automatiquement les fichiers plus vieux qu'un certain nombre de jours

TARGET_DIR=$1
DAYS=$2
LOG_FILE="cleanup.log"

if [ -z "$TARGET_DIR" ] || [ -z "$DAYS" ]; then
    echo "❌ Utilisation: ./cleanup.sh <dossier> <jours>"
    exit 1
fi

if [ ! -d "$TARGET_DIR" ]; then
    echo "❌ Le dossier n'existe pas : $TARGET_DIR"
    exit 1
fi

echo "🧹 Nettoyage des fichiers de +$DAYS jours dans : $TARGET_DIR" | tee -a $LOG_FILE

# Commande clé 🔑 : find
FOUND=$(find "$TARGET_DIR" -type f -mtime +$DAYS)

if [ -z "$FOUND" ]; then
    echo "✔ Aucun fichier à supprimer." | tee -a $LOG_FILE
    exit 0
fi

echo "$FOUND" | while read FILE; do
    echo "🗑 Suppression : $FILE" | tee -a $LOG_FILE
    rm -f "$FILE"
done

echo "✅ Nettoyage terminé !" | tee -a $LOG_FILE