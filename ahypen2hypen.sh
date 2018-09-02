#!/bin/bash

### Remove the door name from the documentation DE2101A --> DE2101
##
## We have the following patterns I believe.
##  [2101A-]
##  [2010A -]
##  [2101A.] 

## A full stop (.) we need to escape like this (\.) or sed will interpret it as a command.

##  Following Git command comes handy when playing with this.
## Just remember to keep what you have in this file.
## git reset --hard HEAD

## Loops through files in the Panels folder
for filename in ./Panels/*.md
do
	# [0-9] regular expression. [0-9][0-9][0-9][0-9] will match all numbers 0000 to 9999
	# . need to be escaped \.
	# /OnlyLinesWith/s/WhatToReplace/ReplaceWith/
	sed -i -e '/[0-9][0-9][0-9][0-9]A/s/A -/ -/g' $filename
	sed -i -e '/[0-9][0-9][0-9][0-9]A/s/A-/-/g' $filename
	sed -i -e '/[0-9][0-9][0-9][0-9]A/s/A\./\./g' $filename


done

