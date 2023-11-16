#!/bin/bash

sed -E "s/^/<li>/g" $1.csv > tmp
sed -E "s/$/<\/li>/g" tmp > tmp2

nom_region=$(grep $1 regions | cut -d: -f2)


echo "<h1>Region $nom_region  indicatif $1</h1>" > $1.html
echo "<ul>" >> $1.html
cat tmp2 >> $1.html
echo "</ul>" >> $1.html

rm tmp tmp2 
