#!/bin/bash
read -p "Введи число студентов: " num_of_stud

re='^[0-9]+$'
if ! [[ $num_of_stud =~ $re ]]
then
    echo "Ошибка!"
else
    if [[ $num_of_stud == 0 ]]
    then
        echo "No students"
    elif [[ $num_of_stud -lt 5 ]]
    then
        echo "$num_of_stud students"
    else
        echo "A lot of students"
    fi
fi