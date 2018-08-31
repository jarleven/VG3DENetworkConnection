#!/bin/bash

## Passes parameter as filename (eg. "bash makedoc.sh FILENAME")
FILE=$1

if [ -z "$FILE"  ]
then
	FILE="tmp" ##If no name is specified, set default name as tmp.pdf (ignored by git)
fi

## variable for the list of filenames to put into one pdf
pdflist=''

## Creates a direcotry for all autogens if it doesent already exist
mkdir -p Autogen

## Loops through files in panels
for filename in ./Panels/*.md
do
	panel=$(basename $filename .md)
	echo ""
	echo ""
	echo "Converting '$filename' to PDF..."

	cat ./Pandoc/header.md "./Panels/"$panel".md" > ./Autogen/tmp.md

	## generate and scale
	#pandoc "./Panels/"$i".md" -s -o "./Autogen/"$i".pdf"
	pandoc ./Autogen/tmp.md -s -o "./Autogen/"$panel".pdf"

	#wget -O $i.pdf https://gitprint.com/RexTheCapt/VG3DENetworkConnection/blob/master/Panels/$i.md?download

	## append every panel to the list
	pdflist=$pdflist"./Autogen/"$panel".pdf "
	#echo $pdflist
	echo "done"
done

#pandoc DE1130A-R1-P1.md -s -o DE1130A-R1-P1.pdf
#pandoc Legend.md -s -o Legend.pdf
#pandoc TODO.md -s -o TODO.pdf

## generate and scale
echo ""
echo ""
echo "Converting 'README' to PDF..."
pandoc README.md -s -o "./Autogen/README.pdf"
echo "done"

## add the legend to the list
pdflist="./Autogen/README.pdf "$pdflist

echo ""
echo ""
echo "Merging files..."
## concatenate all the pdf files to one
echo $pdflist
pdftk $pdflist cat output $FILE".pdf"
echo "done"

# git log -1 --format="%ad" -- Panels/DE1130A-R1-P2.md
# Mon Aug 27 15:09:08 2018 +0200
