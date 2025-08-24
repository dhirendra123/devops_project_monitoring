#!/bin/bash
# backup_logs.sh - Archives application logs with timestamp

LOG_DIR="../logs"
BACKUP_DIR="../backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/app_log_$TIMESTAMP.tar.gz"

# Ensure backup directory exists
mkdir -p $BACKUP_DIR

# Create compressed backup of logs
tar -czf $BACKUP_FILE -C $LOG_DIR app.log

echo "✅ Backup created at $BACKUP_FILE"

