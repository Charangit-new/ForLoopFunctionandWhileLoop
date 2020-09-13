#!/bin/bash 

read -p "Enter the number:-" n

for (( i=2 ; i<=n ; i++))

do
        prime=1;
	for (( j=2;j<=i/2;j++ ))
	do
	   if [ $(( i%j )) -eq 0 ]
		then
			prime=0;
			break;
	   fi
	done

	if [ $prime == 1 ]
	then
		echo $i;
	fi

done

