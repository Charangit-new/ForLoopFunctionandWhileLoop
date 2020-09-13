#!/bin/bash

read -p "Enter any two numbers" a b

function pall(){
	n=$1
	rev=0
	while [ $n -gt 0 ]
	do
		temp=`expr $n % 10`
		rev=`expr $rev \* 10 + $temp`
		n=`expr $n / 10` 
done
	if [ $rev -eq $1 ]
	then echo "$1=Pallindrome Number"
	else echo "$1=Not a pallindrome number"
	fi
}

pall $a
pall $b
