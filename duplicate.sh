#!/bin/bash
file=$1

sort $file | uniq -c | awk '$1 > 1 {print $2, $1}'
