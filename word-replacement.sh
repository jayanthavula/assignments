#!/bin/bash

read -p "Please enter a word to you want to replace: " old_word
read -p "Please enter a word to replace: " new_word
file="/home/admin/shell/assignments/content.txt"


sed -i "s/$old_word/$new_word/" $file
