USER_LIST="user-List.txt"
CREDENTIALS="credentials.txt"

> "$CREDENTIALS" 

while read username; do
	[ -z "$username" ]&& continue
	useradd "$username"
	PASSWORD=$(openssl rand -base64 8)
	echo "$username:$PASSWORD" | chpasswd
	echo "$username:$PASSWORD" >> "$CREDENTIALS"

done < "$USER_LIST"

echo "All users created! Credentials saved in $CREDENTIALS"
