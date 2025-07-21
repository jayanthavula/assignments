#!/bin/bash
file=$1

tr -cs '[:alnum:]' '[\n*]' < $file | awk '{print length, $0}' | sort -nr | head -n 1| cut -d ' ' -f2-
