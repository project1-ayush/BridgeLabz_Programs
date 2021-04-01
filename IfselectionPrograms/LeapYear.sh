#!/bin/bash -x

yy=0

echo -n "Enter year (yyyy) : "
read yy

if [ $yy -ge 1000 ] && [ $yy -le 9999 ]
   then

	if [ $((yy % 400)) -eq  0 ]
		then
			echo "Leap Year $yy"
	elif [  $((yy % 100)) -eq 0 ]
		then
			echo "Not a Leap Year $yy"
	elif [ $((yy % 4)) -eq 0 ]
		then
			echo "Leap Year $yy"
	else
		echo "Not a Leap Year"
	fi
else
    echo "Enter 4 digit number"
fi
