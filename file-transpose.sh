#!/bin/bash

read -p "Please provide file path: " file
value=$(head -n 1 $file | wc -w)
for((i=1;i<=value;i++))
do
        cut -d ' ' -f $i $file | xargs
done
