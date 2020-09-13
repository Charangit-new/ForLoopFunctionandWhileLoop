#!/bin/bash 


sum=100

# Win==1 ; loss==0
count=0
bets=0
i=1
while [ "$sum" -gt 0 ]
do
	random=$(( RANDOM%2 ))
	(( bets++ ))
	if [ "$random" -eq 1 ] 
	then
	sum=$(( sum+i ));
	(( count++ ));
		if [ "$sum" == 200 ]
		then 
		echo "Gambler won 200 rupees and quit"
		break;
		fi
	else
	sum=$(( sum-i ));
		if [ "$sum" == 0 ]
		then
		echo "Gambler lost all the money and quit"
		break;
		fi
	fi
done

echo "No of bets made== $bets"
echo "No of times won== $count" 
