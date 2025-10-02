FREESPACE=$(free -mt | grep "Total" | awk '{print$3}') 
TH=200
if [ "$FREESPACE" -le "$TH" ] 
then
	echo "The ram is High"
else
	echo "The Ram is low"
fi

