#!/bin/bash
read -p "Enter number upto which harmonic pattern is to printed " n
sum=0
for (( i=1 ; i<=n ; i++))
do
	echo  -n "1/$i  "
	term=`echo $i | awk '{ print 1 / $1 }'`
	sum=`echo $term $sum | awk '{print $1 + $2}'`
done
printf "\n"
echo  "Summation=$sum"



