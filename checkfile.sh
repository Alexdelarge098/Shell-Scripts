path=/home/prityush/scripts

read -p "Enter the filename" filename

cd "$path" || exit

if [ -f "$filename" ]
then
	echo "file exists"
else
	echo "The file does not exists"
fi

