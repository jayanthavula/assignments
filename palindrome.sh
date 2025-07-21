#!/bin/bash
file=$1

if [[ ! -f $file ]]; then
        echo "File not found"
fi

echo "Palindromic words in '$file':"

tr -cs '[:alnum:]' '[\n*]' < "$file" | \
tr '[:upper:]' '[:lower:]' | \
sort -u | \

while read word; do
        rev_word=$(echo $word | rev)
        if [[ $word == $rev_word ]]; then
                echo $word
        fi
done
