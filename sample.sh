read -p "create the file" create

touch $create 

echo "copy the contents to the file"

if [ -f "$create" ]
then
	man ls >> "$create"
else
	echo "No need to copy"

fi


