#!/bin/bash -x

freq=0;

read -p "Enter Your Number:" num

a=$(( $num / 2 ))
echo $a
for((i=2;i<=$a;i++))
do
		if [ $(($num % $i)) -eq 0 ]
		then
                     ((freq++))
							 
		fi
done

if [ $freq -eq  0 ]
then
	echo "Prime Number $num"
else
	echo "Not A Prime Number $num"
fi
