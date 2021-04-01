#!/bin/bash -x

read -p "Enter the nth number: " num

sum=0

for((i=1;i<=$num;i++))
do
   sum=`echo $(($sum + (1/$num))) | bc -l`
done

echo $sum
