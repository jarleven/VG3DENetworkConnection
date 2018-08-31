#!/bin/bash

# Search pattern delete everything between
sed -i '/Autotable start/,/Autotable stop/{//!d}' README.md

# Add a blank line after matching pattern (We need this empty line if not markdown will not pick this up as a table)
sed -i '/Autotable start/G' README.md


# Loop all files, extract filename and author put in after matching pattern
for filename in ./Panels/*.md; do
	if [ $filename != "./Panels/MAL.md" ]
	then
		echo $filename
		panel=$(basename $filename .md)

		author=$(cat $filename | grep "Author" | sed -e 's/##### Author: //g')
		todo=$(cat $filename | grep "TODO" | sed -e 's/##### TODO: //g')
		status=$(cat $filename | grep "Tilstand" | sed -e 's/##### Tilstand: //g')
		
		# Build the table row
		tabell=$(echo "|""["$panel"]""(Panels/"$panel".md)""|"$author"|"$todo"|"$status"|")
		
		# Add the row after the matching table
		sed -i "/Autotable start/a $tabell" README.md
	fi
done

# Add the table header
tabell=$(echo "|----|----|----|----|")
sed -i "/Autotable start/a $tabell" README.md
tabell=$(echo "|Patch|Coordinator|TODO|Status|")
sed -i "/Autotable start/a $tabell" README.md

# Add a blank line at the top
sed -i '/Autotable start/G' README.md

