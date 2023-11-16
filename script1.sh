#!/bin/bash

code_reg=$1

nom_region=$(grep $code_reg regions | cut -d':' -f2)
echo $nom_region
grep "$nom_region" cities.csv | cut -d',' -f3,7,2 | awk -F',' '{print $1":"$3":"$2}' > $code_reg.csv
