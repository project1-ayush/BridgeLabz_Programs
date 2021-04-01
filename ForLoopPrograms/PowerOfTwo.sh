#!/bin/bash -x

result=1;

read -p "Enter Your Number:" num

for((i=1;i<=$num;i++))
do
		result=$((result*2))
		echo "$result"

done
