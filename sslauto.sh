#!/bin/bash

list=$(cat $1)
mkdir $2
for i in $list; do
echo "$i"
OPENSSL=bin/openssl.Linux.x86_64 ./testssl.sh $i | aha > $2/$i-testssl.html
file=$2/$i-testssl.html
errgrep=$(grep "failed abc" $file)
if [[ $errgrep == "failed abc" ]]
then
rm $file
fi
done


