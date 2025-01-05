#!/bin/bash
#This script that reads a text file and counts the occurrences of each word, displaying the top 5 most frequent words along with their counts.
file=/home/admin/scripts/words.txt
sort "$file" | uniq -c | sort -nr | head -n 5
