#!/bin/bash

pandoc DE1130A–R1–P1.md -s -o DE1130A–R1–P1.pdf
pandoc Legend.md -s -o Legend.pdf
pandoc TODO.md -s -o TODO.pdf

pdftk DE1130A–R1–P1.pdf Legend.pdf TODO.pdf cat output Dokumentasjon-autogen.pdf

