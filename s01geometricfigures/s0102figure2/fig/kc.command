#!/bin/sh
cd "/ketcindysample.git/s01geometricfigures/s0102figure2/fig"
"/Library/Frameworks/R.framework/Versions/Current/Resources/bin/R" --vanilla --slave < "s0102figure2.r"
"/Applications/kettex/texlive/bin/x86_64-darwin/uplatex" "s0102figure2main.tex"
"/Applications/kettex/texlive/bin/x86_64-darwin/dvipdfmx" "s0102figure2main.dvi"
rm "s0102figure2main.dvi"
open -a "skim" "s0102figure2main.pdf"
exit 0
