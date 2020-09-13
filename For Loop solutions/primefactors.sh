#!/bin/bash
read -p "Enter a number :- " n
echo "The factors of $n : "
for (( i=2 ; i<=n ; ))
do
	if [ $(($n%$i )) -eq 0 ]
	then
		n=$(($n/$i))
		echo -n "$i "
		continue
	fi
	i=$(($i+1))
done


