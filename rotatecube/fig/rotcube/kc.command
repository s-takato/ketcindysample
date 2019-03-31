#!/bin/sh
cd "/ketcindysample.git/rotatecube/fig/rotcube"
/Library/Frameworks/R.framework/Versions/Current/Resources/bin/R  --vanilla --slave < rotatecube.r 2> errormessageR.txt
exit 0
