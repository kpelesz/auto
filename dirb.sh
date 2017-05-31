list=$(cat $1)

#TODO: Add multi-processing

for i in $list; do
	echo "$i"
	name=$(echo $i | grep $i | sed 's/http.*:\/\///g' | sed 's/:/-/g')
	dirb $i /usr/share/dirb/wordlists/big.txt -o $name.dirb
done
