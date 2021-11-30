#!/bin/sh
cd "/Users/takatoosetsuo/gitlocal/ketcindysample/ketmath/howtouse"
"/Applications/KeTTeX.app/texlive/bin/universal-darwin/uplatex" "howtouseketmathE.tex"
"/Applications/KeTTeX.app/texlive/bin/universal-darwin/dvipdfmx" "howtouseketmathE.dvi"
rm "howtouseketmathE.dvi"
open -a "preview" "howtouseketmathE.pdf"
exit 0
