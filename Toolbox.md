## GitHub markdown !


https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet

https://gitprint.com/

https://gist.github.com/justincbagley/ec0a6334cc86e854715e459349ab1446

https://gitprint.com/jarleven/VG3DENetworkConnection/blob/master/DE1130A–R1–P1.md

https://gist.github.com/M1ke/7681965


```
wget -O DE1130A–R1–P1.pdf https://gitprint.com/jarleven/VG3DENetworkConnection/blob/master/DE1130A–R1–P1.md?download


#https://tex.stackexchange.com/questions/134365/installation-of-texlive-full-on-ubuntu-12-04
#https://pandoc.org/getting-started.html
sudo apt install texlive-full
sudo apt install pandoc
sudo apt install pdftk
sudo apt install inkscape

pandoc DE1130A–R1–P1.md -s -o DE1130A–R1–P1.pdf

```

```

pandoc --from=markdown --output=my.pdf DE1130A-R1-P1.md  -V geometry:a4paper

https://stackoverflow.com/questions/23811002/from-markdown-to-pdf-how-to-change-the-font-size-with-pandoc
https://www.reddit.com/r/emacs/comments/4cbpph/markdown_pandoc_mode_pdf_export_looks_ugly/

```
