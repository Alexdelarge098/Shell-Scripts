mkdir -p ~/backup

timestamp=$(date +"%Y%m%d_%H%M%S") 

for file in *.txt; do
	if [ -f "$file" ]
	then
		cp "$file" ~/backup/"${file%.txt}_$timestamp.txt"
	fi
done

echo "Backup completed! Files copied to ~/backup with timestamp"


