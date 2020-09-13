#!/bin/bash 

prime=true;
read -p "Enter the number:-" n
for ((i=2;i<=n-1;i++))
do
	if [ $((n%i)) -eq 0 ]
	then
		echo "$n is not a prime number";
		prime=false;
		break;
	else 
	continue;
	fi

done
	if [ $prime == "true" ]
	then
	echo "$n is a prime number"
	fi



