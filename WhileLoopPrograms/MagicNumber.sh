#!/bin/bash -x

s=0;
e=10;
m=0;

read -p "Enter Your Number: between 1 to 10 " num

m=$(((s+e)/2))

while [[ $s -lt $e ]]
do

	read -p "Enter 1 if mid $m is number and 0 if mid $m is not number" ch


	if [ $ch -eq 0 ]
	then
			read -p "Enter 1 if mid $m is greater than number And 0 if mid $m is smaller than number " ch
			if [ $ch -eq 1 ]
			then
					e=$m
			else
					s=$m
			fi
	else
			echo Magic Number $m
			exit
	fi

	m=$(((s+e)/2))

done
