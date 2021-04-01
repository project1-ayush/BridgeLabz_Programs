#!/bin/bash -x

read -p "Enter Month of Date :" mm
read -p "Enter Day of Date :" dd
read -p "Enter Year of Date :" yy


y=$(( ($yy - 14 - $mm) / 12 ))

x=$(( $y + $y/4 - $y/100 + $y/400 ))

m=$(( $mm + 12*((14-$mm)/12) - 2 ))

d=$(( (($dd + $x + 31*$mm)/12) % 7 ))

echo $y $x $m $d
