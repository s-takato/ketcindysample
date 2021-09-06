#!/bin/sh
cd "/Users/takatoosetsuo/gitlocal/ketcindysample/ketmath/howtouse"
"/Applications/KeTTeX.app/texlive/bin/universal-darwin/uplatex" "linklist.tex"
"/Applications/KeTTeX.app/texlive/bin/universal-darwin/dvipdfmx" "linklist.dvi"
rm "linklist.dvi"
open -a "preview" "linklist.pdf"
exit 0
