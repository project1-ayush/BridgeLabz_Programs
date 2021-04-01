#!/bin/bash -x

read -p "Enter value of a: " a
echo  $a

read -p "Enter value of b: " b
echo  $b

read -p "Enter value of c: " c
echo  $c

val1=$(( $a + $b * $c ))
echo $val1

val2=$(( $a % $b + $c ))
echo $val2

val3=$(( $c + $a / $b ))
echo $val3

val4=$(( $a * $b + $c ))
echo $val4

if [ $val1 -gt $val2 ] && [ $val1 -gt $val3 ] && [ $val1 -gt $val4 ]
then
		echo "Maximum value is $val1"
elif [ $val2 -gt $val1 ] && [ $val2 -gt $val3 ] && [ $val2 -gt $val4 ]
then
		echo "Maximum value is $val2"
elif [ $val3 -gt $val1 ] && [ $val3 -gt $val2 ] && [ $val3 -gt $val4 ]
then
		echo "Maximum value is $val3"
else
		echo "Maximum value is $val4"
fi

if [ $val1 -lt $val2 ] && [ $val1 -lt $val3 ] && [ $val1 -lt $val4 ]
then
		echo "Minimum value is $val1"
elif [ $val2 -lt $val1 ] && [ $val2 -lt $val3 ] && [ $val2 -lt $val4 ]
then
		echo "Minimum value is $val2"
elif [ $val3 -lt $val1 ] && [ $val3 -lt $val2 ] && [ $val3 -lt $val4 ]
then
		echo "Minimum value is $val3"
else
		echo "Minimum value is $val4"
fi
