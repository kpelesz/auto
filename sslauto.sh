#!/bin/bash

list=$(cat list.txt)

for i in $list; do
echo "$i"
OPENSSL=bin/openssl.Linux.x86_64 ./testssl.sh $i | aha > $i-testssl
done
