#!/bin/bash
DB_NAME="example_db"
USER="root"
PASSWORD="password"
BACKUP_PATH="/backups/db_backup_$(date +"%Y-%m-%d").sql"

mysqldump -u $USER -p$PASSWORD $DB_NAME > $BACKUP_PATH
echo "Database backup saved to $BACKUP_PATH"
