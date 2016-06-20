#!/bin/bash
list=$(cat list.txt)

for i in $list; do
echo -n "$i    "
content=$(wget $i -q -O -)
echo -n $content | grep -o '"https://ftp[^"]*"' | grep -v 'dev\.' | grep -o '7.*.zip' | sed 's/.zip//g' | tr '\n' '   '
echo ""
done
