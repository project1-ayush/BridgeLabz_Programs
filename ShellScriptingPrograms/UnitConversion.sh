#!/bin/bash -x

z=$(echo |awk '{print 42/12}')
echo "42 is equal to $z ft"

z=$(echo |awk '{print 60*40*0.092903}')
echo "Rectangular Plot in meters is $z"

z=$(echo |awk '{print (60*40*25)/43560}')
echo "Area of 25 such plots is $z acres"
