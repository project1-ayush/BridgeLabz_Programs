#!/bin/bash -x

MAXCOUNT=9
i=0

while [ $i -le $MAXCOUNT ]
do
	arr[$i]=$((RANDOM%900+100));
	((i++))
done

i=0

small=${arr[0]}
s_small=${arr[0]}

while [ $i -le $MAXCOUNT ]
do
	if [ $small -gt ${arr[$i]} ]
	then
		s_small=$small
		small=${arr[$i]}
	elif [ $s_small -gt ${arr[$i]} ] && [ ${arr[$i]} -ne $small ]
	then
		s_small=${arr[$i]}
	fi

	((i++))
done
echo " Array: ${arr[@]} "
echo "Second Smallest Number : $s_small"

temp=0
s_large=0
i=0

while [ $i -le $MAXCOUNT ]
do
	if [ ${arr[$i]} -gt $temp ]
	then
			s_large=$temp
			temp=${arr[$i]}
	elif [ ${arr[$i]} -gt $s_large ]
	then
			s_large=${arr[$i]}
	fi
	
	((i++))
done

echo "Array : ${arr[@]} "
echo "Second Largest Number : $s_large"
