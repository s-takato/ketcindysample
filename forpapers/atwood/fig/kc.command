#!/bin/sh
cd "/ketcindysample.git/forpapers/atwood/"
mkdir ketcindyjs
cd "/Applications/kettex/texlive/texmf-dist/scripts/ketcindy/ketcindyjs"
cp -r -p katex /ketcindysample.git/forpapers/atwood/ketcindyjs
cp -p Cindy.js /ketcindysample.git/forpapers/atwood/ketcindyjs
cp -p Cindy.js.map /ketcindysample.git/forpapers/atwood/ketcindyjs
cp -p CindyJS.css /ketcindysample.git/forpapers/atwood/ketcindyjs
cp -p katex-plugin.js /ketcindysample.git/forpapers/atwood/ketcindyjs
cp -p webfont.js /ketcindysample.git/forpapers/atwood/ketcindyjs
exit 0
