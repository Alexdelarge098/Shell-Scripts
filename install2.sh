read -p "Enter the software to install" install

if [ -n "$install" ]
then
	sudo apt-get install "$install" -y
else
	echo "Invalid command; no software name is mentioned"
fi

