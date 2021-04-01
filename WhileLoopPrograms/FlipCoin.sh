#!/bin/bash -x

Head=1;
Tail=0;
freqHead=0;
freqTail=0;
randomFlip=0;

while [[ $freqHead -lt 11 && $freqTail -lt 11 ]]
do
		randomFlip=$((RANDOM%2))
		if [ $Head -eq $randomFlip ]
		then
				((freqHead++))
		else
				((freqTail++))
		fi
done

echo "Head Frequency is $freqHead . Tail Frequency is $freqTail"
