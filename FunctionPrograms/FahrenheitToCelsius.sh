#!/bin/bash -x

function getTemp() {
	local choice=$1
	       				if [ $choice -eq 1 ]
							then
									read tc
									tf=$(echo "scale=2;((9/5)*$tc)+32"|bc)
                           echo "Fahrenheit Temperature $tf"

							elif [ $choice -eq 2 ]
							then
									read tf
									tc=$(echo "scale=2;(5/9)*($tf-32)"|bc)
									echo "Celsius Temperature $tc"
							fi

}

read -p "Enter 1 To Convert Celsius to Fahrenheit Or Enter 2 To Convert vice versa" num
result="$( getTemp $num)"

