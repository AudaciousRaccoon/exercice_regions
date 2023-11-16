#!/bin/bash

sed -E "s/^/<li>/g" $1.csv > tmp
sed -E "s/$/<\/li>/g" tmp > tmp2




echo "<h1>$1</h1>" > $1.html
echo "<ul>" >> $1.html
cat tmp2 >> $1.html
echo "</ul>" >> $1.html

rm tmp tmp2 
