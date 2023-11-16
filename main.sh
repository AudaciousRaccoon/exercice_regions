#!/bin/bash


bash script1.sh $1
bash script2.sh $1



mkdir tmp
mv $1.html tmp
mv $1.csv tmp


firefox tmp/$1.html
