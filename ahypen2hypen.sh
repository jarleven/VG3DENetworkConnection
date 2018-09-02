#!/bin/bash

## Loops through files in panels
for filename in ./Panels/*.md
do
	# [0-9] regular expression. [0-9][0-9][0-9][0-9] will match all numbers 0000 to 9999
	# . need to be escaped \.
	# /OnlyLinesWith/s/WhatToReplace/ReplaceWith/
	sed -i -e '/[0-9][0-9][0-9][0-9]A/s/A -/ -/g' $filename
	sed -i -e '/[0-9][0-9][0-9][0-9]A/s/A-/-/g' $filename
	sed -i -e '/[0-9][0-9][0-9][0-9]A/s/A\./\./g' $filename

	# Comes handy when playing with this. Just remember to keep what you have in this file
	# git reset --hard HEAD
done

