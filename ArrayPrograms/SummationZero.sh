#!/bin/bash -x

MAXCOUNT=9
cnt=0
temp=0
sum=0

while [ $cnt -le $MAXCOUNT ];
do
		read -p "Enter An Integer" num
		arr[$cnt]=$num
		((cnt++))
done

echo ${arr[@]}

for(( i=0;i<8;i++))
do
	sum=0;
	for((j=i;j<i+3;j++))
	do
		sum=$(($sum+${arr[$j]}))
	done

	if [ $sum -eq 0 ]
	then
			echo "${arr[$i]} ${arr[$i+1]} ${arr[$i+2]}"
	fi
done

