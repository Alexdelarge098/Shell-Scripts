addition () {
	local num1=$1
	local num2=$2
	let sum=$(($num1+$num2 ))
	echo $sum
}

subtraction () {
	local num1=$1
	local num2=$2
	let sub=$(($num1-$num2))
}

addition 2 2 
subtraction 3 2

