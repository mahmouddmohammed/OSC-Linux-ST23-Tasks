#!/bin/bash

echo '''
1. Addition
2. Subtraction
3. Multiplication
4. Division 
5. Exit
'''
result=0
while [[ true ]]
do 
    read -p "Enter your choice: " choice_no
    if [[ $choice_no = '5' ]]
        then
            echo "Exiting..."
            break
    fi
    read -p "Enter the first number:  " first_no
    read -p "Enter the second number: " second_no
    if [[ $choice_no = '1' ]]  #lazm ykon feh space b3d 2 brackets w 2bl two brackets
        then
            result=$(($first_no+$second_no))
            echo "$first_no" + "$second_no" = "$result" #elmoshkla kant eny kont katb $(first_no) fa bsbb brackets hoa eftkrha command
            #echo "$first_no
    elif [[ $choice_no = '2' ]]
        then
            result=$(($first_no-$second_no))
            echo "$first_no" - "$second_no" = "$result"

    elif [[ $choice_no = '3' ]]
        then
            result=$(($first_no*$second_no))
            echo "$first_no" * "$second_no" = "$result"
        
    elif [[ $choice_no = '4' ]]
        then
            result=$(($first_no/$second_no))
            echo "$first_no" / "$second_no" = "$result"
    

    fi

done