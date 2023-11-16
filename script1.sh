#!/bin/bash

code_reg=$1
sudo rm coderegion
IFS=$'\n'
file=$(cat departementsfrance)


for i in $file
do
	echo $i | cut -d"," -f3,4 >> coderegion
done

#nom_region=$(grep $code_reg coderegion | sed -E "s/^.*$code_reg,([a-ZéôÎ-])( .*)?$/\1/g")

nom_region=$(grep $code_reg coderegion | head -1 | cut -d',' -f2)

#echo $nom_region

grep $nom_region cities.csv | cut -d',' -f3,7,2 | awk -F',' '{print $1":"$3":"$2}' >> $code_reg.csv
