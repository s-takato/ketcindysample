#!/bin/sh
cd "/Users/takatoosetsuo/ketcindysample.git/stats/fig"
"/Library/Frameworks/R.framework/Versions/Current/Resources/bin/R" --vanilla --slave < "pFj2023.r"
"/Applications/KeTTeX.app/texlive/bin/universal-darwin/uplatex" "pFj2023main.tex"
"/Applications/KeTTeX.app/texlive/bin/universal-darwin/dvipdfmx" "pFj2023main.dvi"
rm "pFj2023main.dvi"
open -a "preview" "pFj2023main.pdf"
exit 0
