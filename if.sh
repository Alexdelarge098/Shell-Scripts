#Type the basic output file 

echo "Enter the value to check:"
#Enter the input value

read count
#Pass the if condition

if [[ $count -le 9 ]]
then
	echo "The condition is true" #If the entered value is less than 10
else
	echo "The condition is false" #if the entered value is greater than 10 
fi

