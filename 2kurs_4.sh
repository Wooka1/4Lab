#!/bin/bash
clear

function gcd ()
{
if [[ $1 == $2 ]]
then
    echo "GCD is $1"
elif [[ $1 -gt $2 ]]
then
    gcd $(( $1-$2 )) $2
else
    gcd $1 $(( $2-$1 ))
fi
}


while true
do

read -p "Enter first num: " m
if [[ -z $m ]]
then
    break
fi

read -p "Enter second num: " n
if [[ -z $n ]]
then
    break
fi

gcd $m $n

done

echo "Bye!"