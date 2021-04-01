#!/bin/bash -x

isHead=1;
randomFlip=$((RANDOM%2));

if [ $isHead -eq $randomFlip ];
then
		echo "Its Heads";
else
		echo "Its Tails";
fi
