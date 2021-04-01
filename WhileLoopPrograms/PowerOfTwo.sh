#!/bin/bash -x

i=1;
result=1;

read -p "Enter Your Number:" num

while [[ $i -le $num && $result -lt 256 ]]
do
		result=$((result*2))
		echo "$result"
		((i++))
done
