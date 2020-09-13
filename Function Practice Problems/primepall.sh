#!/bin/bash
read -p "Enter a number " a
function prime() {
	n=$1
	pri=1
	for (( i=2; i<=n-1 ;i++ ))
	do
		if [ ! $(( n % i )) -eq 0 ]
		then continue;
		else
		pri=0
		 break;
		fi
	done
	if [ $pri -eq 1 ]
	then echo "is a prime number"
	else echo "Not a prime number"
	fi
}
function pall() {
	n=$1
	rev=0
	while [ $n -gt 0 ]
	do
		temp=`expr $n % 10`
		rev=`expr $rev \* 10 + $temp`
		n=`expr $n / 10`
	done
		if [ $rev -eq $1 ]
		then echo "Pallindrome"
		prime $rev 
		else echo "Not a pallindrome"
		fi
}
prime $a
pall $a
