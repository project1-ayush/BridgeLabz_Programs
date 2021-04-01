#!/bin/bash -x


read -p "Enter  Month Number : " m
echo $m

read -p "Enter Day : " d
echo $d

if [ $m -eq 3 ]
then
		if [ $d -ge 20 ] && [ $d -le 31 ]
		then
				echo "True"
		else
				echo "False"
		fi
elif [ $m -eq 4 ]
then
		if [ $d -ge 1 ] && [ $d -le 30 ]
		then
				echo "True"
		else
				echo "False"
		fi
elif [ $m -eq 5 ]
then
		if [ $d -ge 1 ] && [ $d -le 31 ]
		then
				echo "True"
		else
				echo "False"
		fi
elif [ $m -eq 6 ]
then
		if [ $d -ge 1 ] && [ $d -le 20 ]
		then
				echo "True"
		else
				echo "False"
		fi
else
		echo "False"

fi
