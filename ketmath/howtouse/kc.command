#!/bin/sh
cd "/Users/takatoosetsuo/gitlocal/ketcindysample/ketmath/howtouse"
"/Applications/KeTTeX.app/texlive/bin/universal-darwin/uplatex" "howtoketmathex.tex"
"/Applications/KeTTeX.app/texlive/bin/universal-darwin/dvipdfmx" "howtoketmathex.dvi"
rm "howtoketmathex.dvi"
open -a "preview" "howtoketmathex.pdf"
exit 0
