#!/bin/sh
cd "/ketcindysample.git/misc/baselproblem/"
mkdir ketcindyjs
cd "/Applications/kettex/texlive/texmf-dist/scripts/ketcindy/ketcindyjs"
cp -r -p katex /ketcindysample.git/misc/baselproblem/ketcindyjs
cp -p Cindy.js /ketcindysample.git/misc/baselproblem/ketcindyjs
cp -p Cindy.js.map /ketcindysample.git/misc/baselproblem/ketcindyjs
cp -p CindyJS.css /ketcindysample.git/misc/baselproblem/ketcindyjs
cp -p katex-plugin.js /ketcindysample.git/misc/baselproblem/ketcindyjs
cp -p webfont.js /ketcindysample.git/misc/baselproblem/ketcindyjs
cp -p jquery.min.js /ketcindysample.git/misc/baselproblem/ketcindyjs
cp -p auto-render.min.js /ketcindysample.git/misc/baselproblem/ketcindyjs
cp -p auto-render11.min.js /ketcindysample.git/misc/baselproblem/ketcindyjs
exit 0
