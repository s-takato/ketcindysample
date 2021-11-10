#!/bin/sh
cd "/Users/takatoosetsuo/gitlocal/ketcindysample/ketmath/howtouse"
"/Applications/KeTTeX.app/texlive/bin/universal-darwin/uplatex" "howtoketmath.tex"
"/Applications/KeTTeX.app/texlive/bin/universal-darwin/dvipdfmx" "howtoketmath.dvi"
rm "howtoketmath.dvi"
open -a "preview" "howtoketmath.pdf"
exit 0
