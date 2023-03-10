#!/bin/bash
echo "This script is responsible to group files into sub-folders, each sub-folder to be named with its common language name."
languages=$(ls files | cut -d \- -f 1 | sort | uniq)
echo "$($languages | wc -l)"
echo $languages

for i in $languages
do
	mkdir -p files/$i
	mv files/$i-* files/$i
done
tree -d files
