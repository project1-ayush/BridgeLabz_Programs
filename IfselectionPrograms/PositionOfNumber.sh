#!/bin/bash -x

read -p "Enter a Number: " x

if [ $x -eq 1 ]
then
			echo "One"
elif [ $x -eq 10 ]
then
			echo "Tens"
elif [ $x -eq 100 ]
then
			echo "Hundred"
else
			echo "Thousand"
fi
