#!/bin/bash -x

read -p "Enter Your Number:" num


for(( i=2; i<=$num ;i++))
do
	r=$(($num%$i))

	if [ $r -eq 0 ]
        then
                freq=0;

					for((j=2;j<=$i;j++))
					do
							 mod=$(($i%$j))
                      if [  $mod -eq 0 ]
		      			 then
									((freq++))
		       			 fi
					done

					if [ $freq -eq 1 ]
					then
							echo "Prime Factor $i"
					fi
    fi
done
