echo "Install the files from the text file"

DIR=/home/prityush/scripts/install.txt

for i in $(cat "$DIR");
do
	echo "Installing: $i"
	sudo apt-get install "$i" -y
done

