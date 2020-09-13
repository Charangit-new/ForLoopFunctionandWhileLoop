#!/bin/bash

random=$(( RANDOM%2 ))
countH=0
countT=0
#head= 1 ,tail = 0
while [ $random -lt 2 ]
do
	if [ $random -eq 1 ]
	then
	(( countH++ ))
		if [ "$countH" -eq 11 ]
		then
		echo "Head wins eleven times"
		break;
		fi
	else
	 (( countT++ ))
		if [ "$countT" -eq 11 ]
		then
		echo "Tail wins eleven times"
		break;
		fi
	fi
done
