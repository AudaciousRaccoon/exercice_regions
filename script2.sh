#!/bin/bash
echo "<h1>$1</h1>" > $1.html
cat $1.csv >> $1.html
