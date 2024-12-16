#!/bin/bash
# Backup Script
SRC="/path/to/source"
DEST="/path/to/backup"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$DEST/backup_$DATE.tar.gz"

mkdir -p "$DEST"
tar -czf "$BACKUP_FILE" "$SRC"

echo "Backup completed: $BACKUP_FILE"
