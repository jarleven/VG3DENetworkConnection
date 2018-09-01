#!/bin/bash

# Search pattern delete everything between
sed -i '/Autotable start/,/Autotable stop/{//!d}' README.md

# Add a blank line after matching pattern (We need this empty line if not markdown will not pick this up as a table)
sed -i '/Autotable start/G' README.md

#Set default lengths
panelLen=0
authorLen=0
todoLen=0
statusLen=0

#Finds the longest string in panel names
for filename in ./Panels/*.md
do
	if [ $filename != "./Panels/MAL.md" ]
	then
		panel=$(basename $filename .md)
		panelLink="["$panel"]""(Panels/"$panel".md)" #Includes link as the lnk is visibil in the raw format
		if [ "${#panelLink}" -gt "$panelLen" ]
		then
			panelLen=${#panelLink}
		fi
	fi
done

#Finds the longest string in author strings
for filename in ./Panels/*.md
do
	if [ $filename != "./Panels/MAL.md" ]
	then
		author=$(cat $filename | grep "Author" | sed -e 's/##### Author: //g')
		if [ "${#author}" -gt "$authorLen" ]
		then
			authorLen=${#author}
		fi
	fi
done

#Finds the longest string in todo strings
for filename in ./Panels/*.md
do
	if [ $filename != "./Panels/MAL.md" ]
	then
		todo=$(cat $filename | grep "TODO" | sed -e 's/##### TODO: //g')
		if [ "${#todo}" -gt "$todoLen" ]
		then
			todoLen=${#todo}
		fi
	fi
done

#Finds the longest string in status strings
for filename in ./Panels/*.md
do
	if [ $filename != "./Panels/MAL.md" ]
	then
		status=$(cat $filename | grep "Tilstand" | sed -e 's/##### Tilstand: //g')
		if [ "${#status}" -gt "$statusLen" ]
		then
			statusLen=${#status}
		fi
	fi
done



# Loop all files, extract filename and author put in after matching pattern
for filename in ./Panels/*.md; do
	if [ $filename != "./Panels/MAL.md" ] #Skip MAL.md
	then
		echo $filename
		panel=$(basename $filename .md)
		author=$(cat $filename | grep "Author" | sed -e 's/##### Author: //g')
		todo=$(cat $filename | grep "TODO" | sed -e 's/##### TODO: //g')
		status=$(cat $filename | grep "Tilstand" | sed -e 's/##### Tilstand: //g')
		
		#Sets amount of whitespace after string to make it look nice in raw format
		x=0
		panelLink="["$panel"]""(Panels/"$panel".md)"
		panelSpace=""
		counter=$(($panelLen - ${#panelLink}))
		while [ $x -lt $counter ]; do
			panelSpace="$panelSpace "
			let x=x+1
		done

		x=0
		authorSpace=""
		counter=$(($authorLen - ${#author}))
		while [ $x -lt $counter ]; do
			authorSpace="$authorSpace "
			let x=x+1
		done

		x=0
		todoSpace=""
		counter=$(($todoLen - ${#todo}))
		while [ $x -lt $counter ]; do
			todoSpace="$todoSpace "
			let x=x+1
		done

		x=0
		statusSpace=""
		counter=$(($statusLen - ${#status}))
		while [ $x -lt $counter ]; do
			statusSpace="${statusSpace} "
			let x=x+1
		done

		# Build the table row
		tabell=$(echo "|""$panelLink""$panelSpace""|""$author""$authorSpace""|""$todo""$todoSpace""|""$status""$statusSpace""|")
		
		# Add the row after the matching table
		sed -i "/Autotable start/a $tabell" README.md
	fi
done

#Sets dashes to the right length so it looks nice in raw format
x=0
panelDash=""
while [ $x -lt $panelLen ]; do
	panelDash="${panelDash}-"
	let x=x+1
done

x=0
authorDash=""
while [ $x -lt $authorLen ]; do
	authorDash="${authorDash}-"
	let x=x+1
done

x=0
todoDash=""
while [ $x -lt $todoLen ]; do
	todoDash="${todoDash}-"
	let x=x+1
done

x=0
statusDash=""
while [ $x -lt $statusLen ]; do
	statusDash="${statusDash}-"
	let x=x+1
done


#Adds right amount of space in headers so it looks nice in raw format
a=$(($panelLen - 5))
b=$(($a / 2))
if [ $(($a%2)) -eq 0 ]; then
	x=0
	panelHead1=""
	panelHead2=""
	while [ $x -lt $b ]; do
		panelHead1="${panelHead1} "
		panelHead2="${panelHead2} "
		let x=x+1
	done
else
	x=0
	panelHead1=" "
	panelHead2=""
	while [ $x -lt $b ]; do
		panelHead1="${panelHead1} "
		panelHead2="${panelHead2} "
		let x=x+1
	done
fi

a=$(($authorLen - 11))
b=$(($a / 2))
if [ $(($a%2)) -eq 0 ]; then
	x=0
	authorHead1=""
	authorHead2=""
	while [ $x -lt $b ]; do
		authorHead1="${authorHead1} "
		authorHead2="${authorHead2} "
		let x=x+1
	done
else
	x=0
	authorHead1=" "
	authorHead2=""
	while [ $x -lt $b ]; do
		authorHead1="${authorHead1} "
		authorHead2="${authorHead2} "
		let x=x+1
	done
fi

a=$(($todoLen - 4))
b=$(($a / 2))
if [ $(($a%2)) -eq 0 ]; then
	x=0
	todoHead1=""
	todoHead2=""
	while [ $x -lt $b ]; do
		todoHead1="${todoHead1} "
		todoHead2="${todoHead2} "
		let x=x+1
	done
else
	x=0
	todoHead1=" "
	todoHead2=""
	while [ $x -lt $b ]; do
		todoHead1="${todoHead1} "
		todoHead2="${todoHead2} "
		let x=x+1
	done
fi

a=$(($statusLen - 6))
b=$(($a / 2))
if [ $(($a%2)) -eq 0 ]; then
	x=0
	statusHead1=""
	statusHead2=""
	while [ $x -lt $b ]; do
		statusHead1="${statusHead1} "
		statusHead2="${statusHead2} "
		let x=x+1
	done
else
	x=0
	statusHead1=" "
	statusHead2=""
	while [ $x -lt $b ]; do
		statusHead1="${statusHead1} "
		statusHead2="${statusHead2} "
		let x=x+1
	done
fi

# Add the table header
tabell=$(echo "|""$panelDash""|""$authorDash""|""$todoDash""|""$statusDash""|")
sed -i "/Autotable start/a $tabell" README.md
tabell=$(echo "|""$panelHead1""Panel""$panelHead2""|""$authorHead1""Coordinator""$authorHead2""|""$todoHead1""TODO""$todoHead2""|""$statusHead1""Status""$statusHead2""|")
sed -i "/Autotable start/a $tabell" README.md

# Add a blank line at the top
sed -i '/Autotable start/G' README.md

