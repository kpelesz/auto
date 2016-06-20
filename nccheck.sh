#!/bin/bash
list=list.txt

while read i; do
echo $i  
timeout 10 nc $i < a.txt
echo ""
echo ""
done < $list
