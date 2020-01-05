#!/bin/sh
cd "/ketcindysample.git/s09surfaceC/s0902cone/fig"
"/Library/Frameworks/R.framework/Versions/Current/Resources/bin/R" --vanilla --slave < "s0902cone.r"
export PATH=/Applications/kettex/texlive/bin/x86_64-darwin:${PATH}
xelatex "s0902conemain.tex"
rm "s0902conemain.dvi"
open -a "preview" "s0902conemain.pdf"
exit 0
