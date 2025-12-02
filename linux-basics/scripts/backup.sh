#!/bin/bash

SOURCE=$1
DEST=$2

if [ ! -d "$SOURCE" ]; then
  echo "❌ Source folder not found!"
  exit 1
fi

DATE=$(date +%Y-%m-%d_%H-%M)
mkdir -p "$DEST"

cp -r "$SOURCE" "$DEST/backup-$DATE"

echo "✅ Backup completed → $DEST/backup-$DATE"