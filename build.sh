#!/bin/bash

git pull
./author.sh
./makedoc.sh NetworkDocumentation
git add README.md
git add NetworkDocumentation.pdf

commit -m "Autodoc"

git push

