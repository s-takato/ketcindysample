#!/bin/sh
cd "/ketcindysample.git/s03tables/s0303(2)gridpaper/fig"
"/Library/Frameworks/R.framework/Versions/Current/Resources/bin/R" --vanilla --slave < "s0303(2)gridpaper.r"
"/Applications/kettex/texlive/bin/x86_64-darwin/uplatex" "s0303(2)gridpaperfig.tex"
"/Applications/kettex/texlive/bin/x86_64-darwin/dvipdfmx" "s0303(2)gridpaperfig.dvi"
rm "s0303(2)gridpaperfig.dvi"
open -a "preview" "s0303(2)gridpaperfig.pdf"
exit 0
