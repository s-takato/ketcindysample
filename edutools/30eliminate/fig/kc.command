#!/bin/sh
cd "/netmaterials.git/ eliminate/fig"
/Library/Frameworks/R.framework/Versions/Current/Resources/bin/R  --vanilla --slave < elim2.r 2> errormessageR.txt
exit 0
