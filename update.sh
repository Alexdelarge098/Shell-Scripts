DIR=/home/prityush/project/logs3

mkdir -p "$DIR"

LOG1=$DIR/update.log

LOG2=$DIR/upgrade.log

LOG3=$DIR/autoremove.log

# Update package lists
sudo apt-get update -y >> $LOG1
#
# # Upgrade installed packages
sudo apt-get upgrade -y >> $LOG2
#
#
# # Remove unused dependencies
sudo apt-get autoremove -y >> $LOG3
