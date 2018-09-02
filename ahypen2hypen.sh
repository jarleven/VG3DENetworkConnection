#!/bin/bash

## Loops through files in panels
for filename in ./Panels/*.md
do
	sed -i -e 's/A-/-/g' $filename
	sed -i -e 's/A./-/g' $filename
done

