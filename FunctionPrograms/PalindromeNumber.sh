#!/bin/bash -x

read -p "Enter first number:" num1
echo $num1

read -p "Enter first number:" num2
echo $num2

#VARIABLES
num=0;


function checkPalindrome() {

while [ $num1 -gt 0 ]
do
		num=$(( $num * 10 ))
		k=$(( $num1 % 10 ))
		num=$(( $num + $k ))
		num1=$(( $num1 / 10 ))
done

if [ $num -eq $num2 ]
then
		echo "Palindrome"
else
		echo "Not Palindrome"
fi

}

result="$( checkPalindrome $((num1)))"



