#!/bin/bash -x

echo "Enter Number"
read num

echo "Enter Number"
read num1

#VARIABLES

count=0
freq=0

function prime
{
		for((i=2;i<=$num;i++))
		do
			if [ $(( $num % $i )) -eq 0 ]
			then
					((freq++))
			fi
		done

		if [ $freq -eq 1 ]
		then
			echo "Prime Number $num"
		else
			echo "Not a prime number $num"
		fi
}

result="$( prime $num )"


function palindrome
{

	num=$num1
	reverse=0

	while [ $num1 -gt 0 ]
	do
		a=$(( $num1 % 10 ))
		num1=$(( $num1 / 10 ))
		reverse=$(( $reverse * 10 + $a ))
	done
	echo $reverse
	if [ $num -eq $reverse ]
	then
		echo "Number is Palindrome"
		 ((count++))
	else
		echo "Number is not Palindrome"
	fi

	if [ $count -eq 1 ]
	then
		 
		 a="$( prime $num )"
		 
	else
		echo "$count is not palindrome"
	fi
}


result="$( palindrome $num1 )"



