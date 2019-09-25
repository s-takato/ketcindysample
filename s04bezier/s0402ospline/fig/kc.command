#!/bin/sh
cd "/ketcindysample.git/s04bezier/s0402ospline/fig"
"/Library/Frameworks/R.framework/Versions/Current/Resources/bin/R" --vanilla --slave < "Ospline.r"
"/Applications/kettex/texlive/bin/x86_64-darwin/uplatex" "Osplinemain.tex"
"/Applications/kettex/texlive/bin/x86_64-darwin/dvipdfmx" "Osplinemain.dvi"
rm "Osplinemain.dvi"
open -a "skim" "Osplinemain.pdf"
exit 0
