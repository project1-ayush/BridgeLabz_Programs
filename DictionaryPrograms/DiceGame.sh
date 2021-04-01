#!/bin/bash -x

one=0
two=0
three=0
four=0
five=0
six=0
max=10
small=0
great=0

declare -A dice

while [[ $one -ne $max && $two -ne $max && $three -ne $max && $four -ne $max && $five -ne $max && $six -ne $max ]]
do
		result=$((RANDOM%6+1));

		if [ $result -eq 1 ]
		then
				((one++))
				dice[1]=$one
		
		elif [ $result -eq 2 ]
		then
				((two++))
				dice[2]=$two
		
		elif [ $result -eq 3 ]
		then
				((three++))
				dice[3]=$three
		
		elif [ $result -eq 4 ]
		then
				((four++))
				dice[4]=$four
		
		elif [ $result -eq 5 ]
		then
				((five++))
				dice[5]=$five

		else
				((six++))
				dice[6]=$six
		fi
done

echo "Each Dice Number Frequency Value ${dice[@]}"
echo "Each Dice Number Index Value ${!dice[@]}"


small=${dice[1]}
great=${dice[1]}

for((i=1;i<7;i++))
do

if [ ${dice[$i]} -lt $small ]
then
		small=${dice[$i]}
		small_index=$i		
elif [ ${dice[$i]} -gt $great ]
then
		great=${dice[$i]}
		great_index=$i
fi
done

echo "Dice Number That Comes Minimum Time $small_index"

echo "Dice Number That Comes Maximum Time $great_index"

