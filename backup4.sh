read -p "Enter the directory path to back up: " DIR

# Create a timestamp
 TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_DIR=~/backup
mkdir -p $BACKUP_DIR

 # Set backup file name
 BACKUP_FILE="$BACKUP_DIR/backup_${TIMESTAMP}.tar.gz"

 # Create the backup
 tar -czvf "$BACKUP_FILE" "$DIR"
#
 echo "Backup completed successfully! Saved as $BACKUP_FILE"
