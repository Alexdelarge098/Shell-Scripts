read -p "Check the apache status" apache

log_dir=$HOME/logs
logs=$log_dir/apache2.log

mkdir -p $log_dir

if [ "$apache" == "yes" ]
then
	echo "The apache is running"
else
	sudo systemctl start apache2 >> "$logs" 2>&1
	echo "apache started"
fi
