#!/bin/bash

sed -i '/Autotable start/,/Autotable stop/{//!d}' README.md

for filename in ./Panels/*.md; do
	echo $filename
	b=$(basename $filename .md)
	#echo $b
	#cat $filename | grep "Author"
	author=$(cat $filename | grep "Author" | sed -e 's/##### Author: //g')
	tabell=$(echo "|"$b"|"$author"|")
	

	sed -i "/Autotable start/a $tabell" README.md

done


tabell=$(echo "|----|----|")
sed -i "/Autotable start/a $tabell" README.md

tabell=$(echo "|Patch|Coordinator|")

sed -i "/Autotable start/a $tabell" README.md


