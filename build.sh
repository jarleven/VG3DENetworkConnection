#!/bin/bash


rm ./Autogen/*

rm ./Pandoc/header.md
git checkout ./Pandoc/header.md

git pull

DATO=`date +"%d-%m-%Y"`
echo "Datoen er "$DATO
sed -i'' "s/3DEA Dokumentasjon/3DEA Dokumentasjon $DATO/g" ./Pandoc/header.md


./author.sh
./makedoc_v2.sh NetworkDocumentation

git add README.md
git add NetworkDocumentation.pdf
git checkout Pandoc/header.md
git commit -m "Autodoc"
git push

# TODO
#  sed -i'' 's/3DEA Dokumentasjon/3DEA Dokumentasjon 21.11.2019/g' ./Pandoc/header.md
