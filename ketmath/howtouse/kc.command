#!/bin/sh
cd "/Users/takatoosetsuo/gitlocal/ketcindysample/ketmath/howtouse"
"/Applications/KeTTeX.app/texlive/bin/universal-darwin/uplatex" "howtoketmathLMS.tex"
"/Applications/KeTTeX.app/texlive/bin/universal-darwin/dvipdfmx" "howtoketmathLMS.dvi"
rm "howtoketmathLMS.dvi"
open -a "preview" "howtoketmathLMS.pdf"
exit 0
