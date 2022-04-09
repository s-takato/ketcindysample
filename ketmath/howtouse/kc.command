#!/bin/sh
cd "/Users/takatoosetsuo/gitlocal/ketcindysample/ketmath/howtouse"
"/Applications/KeTTeX.app/texlive/bin/universal-darwin/uplatex" "howtoketmath0.tex"
"/Applications/KeTTeX.app/texlive/bin/universal-darwin/dvipdfmx" "howtoketmath0.dvi"
rm "howtoketmath0.dvi"
open -a "preview" "howtoketmath0.pdf"
exit 0
