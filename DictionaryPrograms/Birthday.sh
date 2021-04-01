#!/bin/bash -x

one=0
two=0
three=0
four=0
five=0
six=0
seven=0
eight=0
nine=0
ten=0
eleven=0
twelve=0
i=1
max=50

declare -A month

while [[ $i -le $max ]]
do
		result=$((RANDOM%12+1));

		if [ $result -eq 1 ]
		then
				((one++))
				month["Jan "]=$one
		
		elif [ $result -eq 2 ]
		then
				((two++))
				month["Feb "]=$two
		
		elif [ $result -eq 3 ]
		then
				((three++))
				month["Mar"]=$three
		
		elif [ $result -eq 4 ]
		then
				((four++))
				month["Apr"]=$four
		
		elif [ $result -eq 5 ]
		then
				((five++))
				month["May"]=$five
		
		elif [ $result -eq 6 ]
		then
				((six++))
				month["June"]=$six
		
		elif [ $result -eq 7 ]
		then
				((seven++))
				month["July"]=$seven
		
		elif [ $result -eq 8 ]
		then
				((eight++))
				month["Aug"]=$eight
		
		elif [ $result -eq 9 ]
		then
				((nine++))
				month["Sep"]=$nine
		
		elif [ $result -eq 10 ]
		then
				((ten++))
				month["Oct"]=$ten
		
		elif [ $result -eq 11 ]
		then
				((eleven++))
				month["Nov"]=$eleven
		else
				((twelve++))
				month["Dec"]=$twelve
		fi
		
		((i++))
done

echo "Month Number Of the Year ${!month[@]}"
echo "Individual with same month ${month[@]}"

