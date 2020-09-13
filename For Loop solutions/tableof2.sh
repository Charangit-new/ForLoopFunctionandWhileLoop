#!/bin/bash

read -p " Enter the value of n:- " n
echo "Table of 2 to the power of $n:-"
for (( i=1;i<=n;i++ ))
do
         echo -n "$(( 2**i )) "
done
