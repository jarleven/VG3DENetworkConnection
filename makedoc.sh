#!/bin/bash

## declare an array of patchpanel files
declare -a arr=( \

 "DE1130A-R1-P1" \
 "DE1130A-R1-P2" \
 "DE1132A-R1-P1" \
 "DE2010A-R3-P2" \
 "DE2101A-R1-P1" \
 "DE2101A–R1–P2" \
 "DE2101A–R1–P3" \
 "DE2101A-R3-P1" \
" DE2116A–R1–P1" \

 )

## variable for the list of filenames to put into one pdf
pdflist=''

## now loop through the above array
for i in "${arr[@]}"
do
	echo "$i"

	## generate and scale
	pandoc "./Panels/"$i".md" -s -o $i".pdf"
	pdfjam --outfile  $i".pdf" --paper a4paper --scale 1.6 $i".pdf"

	#wget -O $i.pdf https://gitprint.com/RexTheCapt/VG3DENetworkConnection/blob/master/Panels/$i.md?download

	## append very panel to the list
	pdflist=$pdflist$i".pdf "
	echo $pdflist
done

#pandoc DE1130A–R1–P1.md -s -o DE1130A–R1–P1.pdf
#pandoc Legend.md -s -o Legend.pdf
#pandoc TODO.md -s -o TODO.pdf

## generate and scale
pandoc Legend.md -s -o Legend.pdf
pdfjam --outfile  Legend.pdf --paper a4paper --scale 1.6 Legend.pdf

## add the legend to the list
pdflist="Legend.pdf "$pdflist

## concatenate all the pdf files to one
pdftk $pdflist cat output Dokumentasjon-autogen.pdf

# git log -1 --format="%ad" -- Panels/DE1130A–R1–P2.md
# Mon Aug 27 15:09:08 2018 +0200
