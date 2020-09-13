#!/bin/bash
echo "Think a number between 1 and 100 "
min=1
max=100
mid=50
run=1
get=1
while [ ! $get -eq 0 ]
do
	mid=$((($min+$max)/2))
	echo "Is your Number is " $mid
	echo "1. Yes Its my Number "
	echo "2. My Number is less than "$mid
	echo "3. My Number is greater than "$mid
	read -p "Your Response " choice
	case $choice in
	1) echo  "We got Your Number is "$mid
		get=0
	;;

	2)max=$mid
	;;

	3)min=$mid
	;;
	esac

done
