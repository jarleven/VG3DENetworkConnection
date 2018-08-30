#!/bin/bash

## declare an array of patchpanel files
declare -a arr=( \

 "DE1130A-R1-P1" \
 "DE1130A-R1-P2" \
 "DE1130A-R1-P5" \
 "DE1132A-R1-P1" \
 "DE1132A-R1-P2" \
 "DE2101A-R1-P1" \
 "DE2101A-R1-P2" \
 "DE2101A-R1-P3" \
 "DE2101A-R3-P1" \
 "DE2101A-R3-P2" \
 "DE2116A-R1-P1" \
 "DE1124A-R0-P1" \
 "DE1129A-R1-P1" \
 "Leftovers" \
)

## variable for the list of filenames to put into one pdf
pdflist=''

#Creates a direcotry for all autogens if it doesent already exist
mkdir -p Autogen

## now loop through the above array
for i in "${arr[@]}"
do
	echo ""
	echo ""
	echo "$i"

	## generate and scale
	pandoc "./Panels/"$i".md" -s -o "./Autogen/"$i".pdf"
	pdfjam --outfile  "./Autogen/"$i".pdf" --paper a4paper --scale 1.6 "./Autogen/"$i".pdf"

	#wget -O $i.pdf https://gitprint.com/RexTheCapt/VG3DENetworkConnection/blob/master/Panels/$i.md?download

	## append every panel to the list
	pdflist=$pdflist"./Autogen/"$i".pdf "
	#echo $pdflist
done

#pandoc DE1130A-R1-P1.md -s -o DE1130A-R1-P1.pdf
#pandoc Legend.md -s -o Legend.pdf
#pandoc TODO.md -s -o TODO.pdf

## generate and scale
echo ""
echo ""
echo "Legend"
pandoc Legend.md -s -o "./Autogen/"Legend.pdf
pdfjam --outfile  "./Autogen/"Legend.pdf --paper a4paper --scale 1.6 "./Autogen/"Legend.pdf

## add the legend to the list
pdflist="./Autogen/Legend.pdf "$pdflist

echo ""
echo ""
echo "Make one document"
## concatenate all the pdf files to one
pdftk $pdflist cat output "./Autogen/"Dokumentasjon-autogen.pdf

# git log -1 --format="%ad" -- Panels/DE1130A-R1-P2.md
# Mon Aug 27 15:09:08 2018 +0200
