#!/bin/bash -x

read -p "Enter Starting Range Of Number :" num1
read -p "Enter Ending Range Of Number :" num2


for((intial=$num1 ; intial<=$num2 ;intial++))
do
		freq=0;

		for((i=2;i<=$intial;i++))
		do
             if [ $(($intial % $i)) -eq 0 ]
				 then
							((freq++))
				 fi
		done

		if [ $freq -eq 1 ]
		then
					echo "Prime Number $intial"
		fi
done

