RAM=$( free -m | grep "Total" | awk '{print$4}' )
TH=200

if [[ $RAM -le $TH ]]
then
	echo "The RAM is high"
else
	echo "The RAM is low"
fi


