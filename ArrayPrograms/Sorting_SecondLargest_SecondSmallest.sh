#!/bin/bash -x

MAXCOUNT=9
cnt=0
temp=0


while [ $cnt -le $MAXCOUNT ];
do
		arr[$cnt]=$((RANDOM%900+100))
		((cnt++))
done

echo ${arr[@]}

for (( i=0;i<10;i++))
do
	for((j=0;j<10-i-1;j++))
	do
		if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
		then
				temp=${arr[j]}
				arr[$j]=${arr[$((j+1))]}
				arr[$((j+1))]=$temp
		fi
	done
done

echo "Array in sorted order:"
echo ${arr[*]}

echo "Second Smallest Number of array:"
echo ${arr[1]}

echo "Second Largest Number of array:"
echo ${arr[8]}
