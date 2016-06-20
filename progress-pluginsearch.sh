#!/bin/bash


#if [ $# -eq 2 ]; then

#if [ $1 ==  "wordpress" ]; then

list=$(cat testlist.txt)
for i in $list; do 
IFS=$'\n'

list="https://wordpress.org/plugins/$i"

$list | tr ' ' '-'

echo "$list"
done
unset IFS
