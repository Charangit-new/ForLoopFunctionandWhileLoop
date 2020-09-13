#!/bin/bash 
read -p "Enter source unit(degF or degC) " c
read -p "Enter destination unit(degC or degF) " f
read -p "Enter input (in $c ) " a


function myFunc1() {
	if [[ $1 -ge 0 ]] && [[ $1 -le 100 ]]
	then
	echo $1 | awk '{print "degF =" ( $1 * 9/5 ) + 32 }'
	else	 echo "Can print only in certain range of degC"
	fi
}

function myFunc2() {
        if [[ $1 -ge 32 ]] && [[ $1 -le 212 ]]
        then
        echo $1 | awk '{print "degC =" ( $1 - 32 )  * 5/9}'
        else echo "Can print only for certain range of DegF"
        fi
}


case $c-$f in
        degC-degF)
                myFunc1 $a ;;
        degF-degC)
                myFunc2 $a ;;
*)      echo "No conversion found" ;;
        esac
