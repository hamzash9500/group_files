#!/bin/bash
echo "Description:"
echo "This script is responsible for grouping files into sub-folders, each of which is to be named with its common language name."
echo "=============================="
languages=$(ls files | cut -d \- -f 1 | sort | uniq)
languagesNumber=$(echo "$languages" | wc -l)
echo Total Number languages is: $languagesNumber
echo languages: $languages
echo "=============================="
for i in $languages
do
	mkdir -p files/$i 
	mv files/$i-* files/$i 2> /dev/null
done
echo "Output:"
tree files --filelimit 10
echo "=============================="
