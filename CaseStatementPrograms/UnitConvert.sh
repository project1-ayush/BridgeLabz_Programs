#!/bin/bash -x

read -p "Enter a Number:" num
read -p "Enter a unit conversion:" x

case  $x in


				1)
					val=$(( $num * 12 ))
					echo "Feet In Inches is $val"
					;;

				2)
					val=`echo $num \* 0.3048 | bc`
					echo "Feet In Meter is $val"
					;;
				3)
					val=$(( $num / 12 ))
					echo "Inches In Feet is $val"
					;;

				4)
               val=`echo $num \* 3.2808 | bc`
					echo "Meter In Foot is $val"
					;;
				5)
					echo "Data Not Processed"
					;;
				
esac
