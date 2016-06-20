#!/bin/bash

#Make sure to specify the file with the list of urls

list=$1

while read i; do
echo $i  
timeout 10 nc $i < a.txt
echo ""
echo ""
done < $list
