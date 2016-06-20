#!/bin/bash

list=$(cat $1)
mkdir $2
for i in $list; do
echo "$i"
OPENSSL=bin/openssl.Linux.x86_64 ./testssl.sh $i | aha > $2/$i-testssl
done
