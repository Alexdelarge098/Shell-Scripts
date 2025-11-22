read -p "Enter the directory:" dir

cd "$dir" || exit

read -p "enter the filename:" filename


if [ -f "$filename" ]
then
	echo "The file is exist"
else
	echo "The file does not exist"
fi
