#!/bin/bash

list=$(cat $1)

for i in $list; do
	echo "$i""123" >> wordlist.txt
	echo "$i""321" >> wordlist.txt
	echo "$i""123$" >> wordlist.txt
	echo "$i""$321" >> wordlist.txt
	echo "$i""1" >> wordlist.txt
	echo "$i""1!" >> wordlist.txt
	echo "$i""!1" >> wordlist.txt
	echo "$i""!" >> wordlist.txt
	echo "$i""@" >> wordlist.txt
	echo "$i""#" >> wordlist.txt
	echo "$i""$" >> wordlist.txt
	echo "$i""%" >> wordlist.txt
	echo "$i""^" >> wordlist.txt
	echo "$i""&" >> wordlist.txt
	echo "$i""2017" >> wordlist.txt
	echo "$i""2016" >> wordlist.txt
	echo "$i""2015" >> wordlist.txt
	echo "$i""2017!" >> wordlist.txt
	echo "$i""!2017" >> wordlist.txt
	echo "$i""2016!" >> wordlist.txt
	echo "$i""!2016" >> wordlist.txt
	echo "$i""@2017" >> wordlist.txt
	echo "$i""2017@" >> wordlist.txt
	echo "$i""2016@" >> wordlist.txt
	echo "$i""@2016" >> wordlist.txt
	echo "$i""#2017" >> wordlist.txt
	echo "$i""2017#" >> wordlist.txt
	echo "$i""2016#" >> wordlist.txt
	echo "$i""#2016" >> wordlist.txt
	echo "$i""2017$" >> wordlist.txt
	echo "$i""$2017" >> wordlist.txt
	echo "$i""2016$" >> wordlist.txt
	echo "$i""$2016" >> wordlist.txt
	echo "$i""1@" >> wordlist.txt
	echo "$i""@1" >> wordlist.txt
	echo "$i""2" >> wordlist.txt
	echo "$i""3" >> wordlist.txt
	echo "$i""123!" >> wordlist.txt
	echo "$i""12345!" >> wordlist.txt
	echo "$i""12345" >> wordlist.txt
	echo "$i""2@" >> wordlist.txt
	echo "$i""@2" >> wordlist.txt
	echo "$i""3#" >> wordlist.txt
	echo "$i""#3" >> wordlist.txt
	echo "$i""$4" >> wordlist.txt
	echo "$i""4$" >> wordlist.txt
	echo "$i""1234" >> wordlist.txt
	echo "$i""1234!" >> wordlist.txt
	echo "$i""!1234" >> wordlist.txt
	echo "$i""!123" >> wordlist.txt
	echo "$i""!12345" >> wordlist.txt
	echo "$i""123@" >> wordlist.txt
	echo "$i""@123" >> wordlist.txt
	echo "$i""1234@" >> wordlist.txt
	echo "$i""@1234" >> wordlist.txt
	echo "$i""12345@" >> wordlist.txt
	echo "$i""@12345" >> wordlist.txt
	echo "$i""#123" >> wordlist.txt
	echo "$i""123#" >> wordlist.txt
	echo "$i""1234#" >> wordlist.txt
	echo "$i""#1234" >> wordlist.txt
	echo "$i""#12345" >> wordlist.txt
	echo "$i""12345#" >> wordlist.txt
	echo "$i""123$" >> wordlist.txt
	echo "$i""$123" >> wordlist.txt
	echo "$i""1234$" >> wordlist.txt
	echo "$i""$1234" >> wordlist.txt
	echo "$i""12345$" >> wordlist.txt
	echo "$i""$12345" >> wordlist.txt
	echo "$i""123%" >> wordlist.txt
	echo "$i""%123" >> wordlist.txt
	echo "$i""1234%" >> wordlist.txt
	echo "$i""%1234" >> wordlist.txt
	echo "$i""12345%" >> wordlist.txt
	echo "$i""%12345" >> wordlist.txt
	echo "$i""321" >> wordlist.txt
	echo "$i""321" >> wordlist.txt
	echo "$i""321" >> wordlist.txt
	echo "$i""321" >> wordlist.txt

done
	
