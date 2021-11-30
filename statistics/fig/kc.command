#!/bin/sh
cd "/netmaterials.git/kakutou/"
mkdir ketcindyjs
cd "/Applications/KeTTeX.app/texlive/texmf-dist/scripts/ketcindy/ketcindyjs"
cp -r -p katex "/netmaterials.git/kakutou/ketcindyjs"
cp -p Cindy.js "/netmaterials.git/kakutou/ketcindyjs"
cp -p Cindy.js.map "/netmaterials.git/kakutou/ketcindyjs"
cp -p CindyJS.css "/netmaterials.git/kakutou/ketcindyjs"
cp -p katex-plugin.js "/netmaterials.git/kakutou/ketcindyjs"
cp -p webfont.js "/netmaterials.git/kakutou/ketcindyjs"
cp -p jquery.min.js "/netmaterials.git/kakutou/ketcindyjs"
cp -p auto-render.min.js "/netmaterials.git/kakutou/ketcindyjs"
cp -p auto-render11.min.js "/netmaterials.git/kakutou/ketcindyjs"
exit 0
