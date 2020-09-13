#!/bin/bash

read -p "Enter number:- " n
i=1
while [ $i -le $n ]
do 
	result=$(( 2**i ))
	if [ $result -le 256 ]
	then
	echo -n "$result ";
	fi
	(( i++ ));
done
