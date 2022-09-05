#!/bin/bash

while true
do

read -p "Enter your name: " name
read -p "Enter your age: " age

if [ -z $name ] || [ $age == 0 ]
then
    break
else
    if [[ $age -le 16 ]]
    then
        group="child"
    elif [[ $age -gt 25 ]]
    then
        group="adult"
    else
        group="youth"
    fi
fi

echo "$name, your group is $group."

done