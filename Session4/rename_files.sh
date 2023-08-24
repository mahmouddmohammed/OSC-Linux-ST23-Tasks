#!/bin/bash

extension=$1
new_name=$2

index=1
for file in $(ls *.$extension)
do 
    #echo $file    #it's relative path
    full_name=$new_name$index"."$extension
    #echo $full_name
    mv $file $full_name 

    index=$(($index+1))
done