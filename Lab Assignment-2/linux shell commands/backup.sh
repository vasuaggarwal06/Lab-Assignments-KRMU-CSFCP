# script name: backup.sh
# purpose: to take backup of a specified directory with timestamp
# made by:Vasu Aggarwal
# date:10-11-25

# source directory to backup
SOURCE_DIR="/home/vboxuser/Documents"

# destination directory for backups
BACKUP_DIR="/home/vboxuser/Backups"

# create backup directory if not exists 
mkdir -p $BACKUP_DIR

# create timestamp 
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# backup filename
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"
#create backup using tar
tar -czf $BACKUP_FILE $SOURCE_DIR

echo "Backup of $SOURCE_DIR completed successfully at $BACKUP_FILE"

