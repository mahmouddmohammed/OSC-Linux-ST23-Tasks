#!/bin/bash

filename=$1
file_found=false
#dir = $2/*

for file in $(ls $2)
do
    #echo $file
    if [[ $file = $filename ]]
		then
			echo "File exists"
			echo "Content of $file: "
			cat "$2/$file"
			file_found=true
			break

    fi
done

if [[ $file_found = false ]]
    then
		echo "$filename doesn't exist"
		
fi

