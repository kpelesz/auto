#!/bin/bash


#------------DRUPAL
drupal ()
{
for i in $list; do
echo -n "$i    "
content=$(wget $i -q -O -) 
echo -n $content | grep -o '"https://ftp[^"]*"' | grep -v 'dev\.' | grep -o '7.*.zip' | sed 's/.zip//g' | tr '\n' '   '
echo ""
done
}

#-----------WORDPRESS

wordpress ()
{
for i in $list; do
echo -n "$i    "
content=$(wget $i -q -O -)
echo -n $content | grep -o 'https://downloads[^"]*' | grep -o '[0-9].*.zip' | sed 's/.zip//g' | tr '\n' ' '
echo ""
done
}



#-------------------USAGE

if [ $# == '' ]; then
echo "Usage:"


#------------------ONE PRMTR

elif [ $# -eq 1 ]; then

list=$(cat list.txt)


if [ "$1" == "drupal" ]; then
drupal $list

elif [ "$1" == "wordpress" ]; then
wordpress $list

else
echo "Error"

fi
fi

#------------TWO PRMTR

if [ $# -eq 2 ]; then



if [[ "$1" == "wordpress" || "$2" == "wordpress" ]]; then

templist=$(cat list.txt)
IFS=$'\n'
for i in $templist; do

i=$(echo $i | tr ' ' '-')
list=$list"https://wordpress.org/plugins/"$i$'\n'

done

wordpress $list

fi

if [[ "$1" == "drupal" || "$2" == "drupal" ]]; then

templist=$(cat list.txt)
IFS=$'\n'
for i in $templist; do

i=$(echo $i | tr ' ' '_')
list=$list"https://www.drupal.org/project/"$i$'\n'

done

drupal $list

fi
fi
