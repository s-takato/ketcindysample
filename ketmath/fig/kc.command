#!/bin/sh
cd "/ketcindysample.git/ketmath/"
mkdir ketcindyjs
cd "/Applications/KeTTeX.app/texlive/texmf-dist/scripts/ketcindy/ketcindyjs"
cp -r -p katex "/ketcindysample.git/ketmath/ketcindyjs"
cp -p Cindy.js "/ketcindysample.git/ketmath/ketcindyjs"
cp -p Cindy.js.map "/ketcindysample.git/ketmath/ketcindyjs"
cp -p CindyJS.css "/ketcindysample.git/ketmath/ketcindyjs"
cp -p katex-plugin.js "/ketcindysample.git/ketmath/ketcindyjs"
cp -p webfont.js "/ketcindysample.git/ketmath/ketcindyjs"
cp -p jquery.min.js "/ketcindysample.git/ketmath/ketcindyjs"
cp -p auto-render.min.js "/ketcindysample.git/ketmath/ketcindyjs"
cp -p auto-render11.min.js "/ketcindysample.git/ketmath/ketcindyjs"
exit 0
