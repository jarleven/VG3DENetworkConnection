#!/bin/bash

rm ./Autogen/*

git pull
./author.sh
./makedoc_v2.sh NetworkDocumentation

git add README.md
git add NetworkDocumentation.pdf
git commit -m "Autodoc"
git push

# TODO
#  sed -i'' 's/3DEA Dokumentasjon/3DEA Dokumentasjon 21.11.2019/g' ./Pandoc/header.md
