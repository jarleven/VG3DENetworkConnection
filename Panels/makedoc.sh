#!/bin/bash

## Loops through files in panels
for filename in ./*.md
do
	sed -s -i '1i\\' $filename
	sed -i '1s/^/\\pagebreak\n/' $filename
        sed -s -i '1i\\' $filename

done

cat *.md > tmp1.md
cat ../Pandoc/header.md tmp1.md > tmp2.md

pandoc -f markdown  -s -o test.pdf tmp2.md

