echo "Check the apache2 status.."

apache=$(systemctl is-active apache2)

if [[ "$apache" == "active" ]]
then
	echo "The apache is running.."
elif [[ "$apache" == "inactive" ]]
then
	echo "The apache is not running.."
	sudo systemctl start apache2
	echo "Apache service is started"
fi
