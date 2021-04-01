
#!/bin/bash -x

declare -a array

echo "Range from 0 to 100"

for((i=1;i<=100;i++))
do
		if [ $((i%11)) -eq 0 ]
		then
				array[$count]=$i
		fi

	((count++))
done

echo  ${array[@]}


