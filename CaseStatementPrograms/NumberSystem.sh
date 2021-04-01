#!/bin/bash -x

read -p "Enter a Number: " num

case $num in
				1)
					echo "One"
					;;
				
				10)
					echo "Tens"
					;;
				
				100)
					echo "Hundreds"
					;;
				
				1000)
					echo "Thousands"
					;;
				*)
					echo "Data Not Processes"
					;;
esac

