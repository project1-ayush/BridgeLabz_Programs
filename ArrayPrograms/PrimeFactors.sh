#!/bin/bash -x

count=0

read -p "Enter Your Number:" num

for(( i=2; i<=($num);i++))
do
	r=$(($num%$i))

	if [ $r -eq 0 ]
   then
      freq=0;

		for((j=2;j<=$i;j++))
		do
				if [ $(($i%$j)) -eq 0 ]
		      then
				     ((freq++))
		      fi
		done

		if [ $freq -eq 1 ]
			then
					arr[$count]=$i
					echo "Prime Factor $i"
					((count++))
		fi
   fi
done

echo ${arr[@]}
