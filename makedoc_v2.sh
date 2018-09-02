#!/bin/bash


## Passes parameter as filename (eg. "bash makedoc.sh FILENAME")
FILE=$1

if [ -z "$FILE"  ]
then
    FILE="tmp" ##If no name is specified, set default name as tmp.pdf (ignored by git)
fi



mkdir -p Autogen

rm -rf ./Autogen/*

cp ./Panels/*.md ./Autogen/

rm ./Autogen/MAL.md

for filename in ./Autogen/*.md
do
	sed -s -i '1i\\' $filename
	sed -i '1s/^/\\pagebreak\n/' $filename
        sed -s -i '1i\\' $filename

done



cat ./Autogen/*.md > ./Autogen/tmp.md

cat ./Pandoc/header.md ./Autogen/tmp.md > ./Autogen/tmp2.md
mv ./Autogen/tmp2.md ./Autogen/tmp.md


#cat README.md ./Autogen/tmp.md > ./Autogen/tmp2.md
#mv ./Autogen/tmp2.md ./Autogen/tmp.md



sed -i '/\[comment\]/d' ./Autogen/tmp.md
sed -i -e 's/<br\/>/\\\r/g' ./Autogen/tmp.md


pandoc -f markdown  -s -o $FILE.pdf ./Autogen/tmp.md

