#!/bin/bash
#TODO: add more variations, maybe

ext=('123' '321' '123$' '$321' '1' '1!' '!1' '!' '@' '#' '$' '%' '^' '&' '2017' '2016' '2015' '2017!' '!2017' '2016!' '!2016' '@2017' '2017@' '2016@' '@2016' '#2017' '2017#' '2016#' '#2016' '2017$' '$2017' '2016$' '$2016' '1@' '@1' '2' '3' '123!' '12345!' '12345' '2@' '@2' '3#' '#3' '$4' '4$' '1234' '1234!' '!1234' '!123' '!12345' '123@' '@123' '1234@' '@1234' '12345@' '@12345' '#123' '123#' '1234#' '#1234' '#12345' '12345#' '123$' '$123' '1234$' '$1234' '12345$' '$12345' '123%' '%123' '1234%' '%1234' '12345%' '%12345')                                                      

list=$(cat $1)

for i in $list; do

for n in "${ext[@]}"; do
	echo "$i""$n" >> wordlist.txt
done

for m in "${ext[@]}"; do
	icaps="$(tr '[:lower:]' '[:upper:]' <<< ${i:0:1})${i:1}"
	echo "$icaps""$m" >> wordlist.txt
done

done
