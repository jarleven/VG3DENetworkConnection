#!/bin/bash

## Loops through files in panels

mkdir -p Autogen

cp ./Panels/*.md ./Autogen/

rm ./Autogen/MAL.md

for filename in ./Autogen/*.md
do
	sed -s -i '1i\\' $filename
	sed -i '1s/^/\\pagebreak\n/' $filename
        sed -s -i '1i\\' $filename

done



cat ./Autogen/*.md > ./Autogen/tmp.md

cat README.md ./Autogen/tmp.md > tmp2.md
mv tmp2.md tmp.md

cat ../Pandoc/header.md tmp.md > tmp2.md
mv tmp2.md tmp.md

pandoc -f markdown  -s -o test.pdf tmp.md

