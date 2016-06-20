#!/bin/bash
#This utility will take a list of plugins in either Drupal or Wordpress and provide the version of that plugin.
#Plugin search function currently is not fully functional, recommended to provide plugin URLs instead
#In the second parameter, please provide the form you are testing, whether Drupal or Wordpress.

#------------DRUPAL FUNCTION
drupal ()
{
for i in $list; do
  echo -n "$i    "
  content=$(wget $i -q -O -) 
  echo -n $content | grep -o '"https://ftp[^"]*"' | grep -v 'dev\.' | grep -o '7.*.zip' | sed 's/.zip//g' | tr '\n' '   '
  echo ""
done
}

#-----------WORDPRESS FUNCTION

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

if [[ $# -eq 0 ]]; then
  echo 'Usage: Check the version of Drupal or Wordpress plugins'
  echo ''
  echo '"pluginversionchecker.sh file.txt <wordpress/drupal>"'
fi
#------------------One Parameter, Auto uses list.txt

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
#Provided the filename and type of plugin engine
#Imrpovement, have wordpress be properly identified as first or second parameter

if [[ $# -eq 2 ]]; then

  if [[ "$1" == "wordpress" || "$2" == "wordpress" ]]; then
    templist=$(cat $1)
    IFS=$'\n'
    
      for i in $templist; do
        i=$(echo $i | tr ' ' '-')
        list=$list"https://wordpress.org/plugins/"$i$'\n'
      done
      
wordpress $list

fi

if [[ "$1" == "drupal" || "$2" == "drupal" ]]; then
  templist=$(cat $1)
  IFS=$'\n'
    
    for i in $templist; do
      i=$(echo $i | tr ' ' '_')
      list=$list"https://www.drupal.org/project/"$i$'\n'
    done

drupal $list

fi
fi
