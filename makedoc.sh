#!/bin/bash


## declare an array variable
declare -a arr=( \
 "DE1130A–R1–P1" \
 "DE1130A–R1–P2" \
 "DE2101A–R1–P1" \
 "DE2101A–R1–P2" \
 "DE2101A-R3-P1" \
 "DE2116A–R1–P1" \
              )

pdflist=''

## now loop through the above array
for i in "${arr[@]}"
do

	echo "$i"
        pandoc "./Panels/"$i".md" -s -o $i".pdf"

	pdfjam --outfile  $i".pdf" --paper a4paper --scale 1.6 $i".pdf"

	#	wget -O $i.pdf https://gitprint.com/RexTheCapt/VG3DENetworkConnection/blob/master/Panels/$i.md?download
        pdflist=$pdflist$i".pdf "
	echo $pdflist
done

      

#pandoc DE1130A–R1–P1.md -s -o DE1130A–R1–P1.pdf
#pandoc Legend.md -s -o Legend.pdf
#pandoc TODO.md -s -o TODO.pdf


pandoc Legend.md -s -o Legend.pdf
pdfjam --outfile  Legend.pdf --paper a4paper --scale 1.6 Legend.pdf

pdflist="Legend.pdf "$pdflist



pdftk $pdflist cat output Dokumentasjon-autogen.pdf

