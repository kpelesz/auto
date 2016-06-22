#!/bin/bash

#Requires aha to output the results into html file. 
#nc iplist.txt | aha >file.html
#Make sure to specify the file with the list of urls

#Future improvements - Use nmap xml file
#Future improvements - Remove blank outputs

if [[ $# -eq 0 ]]; then
	echo '	This will send a bunch of As to netcat based on a provided list of ips and ports.'
	echo ''
	echo '"nccheck iplist.txt | aha >file.html"'
	exit
fi

#Variables, future improvements - check the file exists

list=$1
touch a.txt | echo "aaaaaaaaaaaaaaaaaaaaaaaaaaa" > a.txt

while read i; do
		echo $i  
		timeout 10 nc $i < a.txt
		echo ""
		echo ""
	done < $list

