#!/bin/bash
#Must have OPENSSL bin to check ciphers
#Must have testssl script
#Future improvements - Run from nmap xml file

if [[ $1 -eq 0 ]]; then
	echo '"sslauto.sh iplist.txt directoryname"'
	echo ''
	echo 'Utility to automatically run through a list of ips, and run the testssl tool'
fi

#Variables - Future Improvements, check for incorrect input
list=$(cat $1)
mkdir $2

for i in $list; do
	echo "$i"
	OPENSSL=bin/openssl.Linux.x86_64 ./testssl.sh $i | aha > $2/$i-testssl.html
	file=$2/$i-testssl.html
	errgrep=$(grep "failed abc" $file)

#Deletes files that do not have ssl
		if [[ $errgrep == "failed abc" ]];then
			rm $file
		fi
done


