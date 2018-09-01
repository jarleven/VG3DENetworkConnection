#!/bin/bash

rm ./Autogen/*

git pull
./author.sh
./makedoc.sh NetworkDocumentation
git add README.md
git add NetworkDocumentation.pdf

git commit -m "Autodoc"

git push

