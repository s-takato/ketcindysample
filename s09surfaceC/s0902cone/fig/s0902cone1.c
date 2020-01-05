#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include "s0902cone1header.h"
#include "/Applications/kettex/texlive/texmf-dist/scripts/ketcindy/ketlibC/ketcommonhead.h"
#include "/Applications/kettex/texlive/texmf-dist/scripts/ketcindy/ketlibC/ketcommon.h"
#include "/Applications/kettex/texlive/texmf-dist/scripts/ketcindy/ketlibC/surflibhead.h"
#include "/Applications/kettex/texlive/texmf-dist/scripts/ketcindy/ketlibC/surflib.h"
double cutfun(short chfd, short chcut, double u, double v){
  double p[3],val;
  surffun(chfd,u,v,p);
  switch(chcut){
    case 1: val=1;break;
  }
  return val;
}
int main(void){
  double data[DsizeL][3],sfbd[DsizeL][3],out[DsizeL][3];
  int i, j, nall;
  char dirfname[256] = {'\0'};
/**/
  printf("%s\n","Execcmd 1");/**/
  char fnameall[]="s0902cone1.txt";/**/
  rangeUV(1);/**/
  boundary(1);/**/
  sfbdparadata(1,sfbd);/**/
  sprintf(dirfname,"%s%s",Dirname,fnameall);/**/
  output3h("w","sfbd3d1","sfbdh3d1",dirfname,sfbd);/**/
  char fname1[]="s0902conecrvsf1.txt";/**/
  rangeUV(1);/**/
  boundary(1);/**/
  readdataC("s0902coneax3d.dat",data);/**/
  readoutdata3(fnameall,"sfbd3d1",sfbd);/**/
  crvsfparadata(1,data,sfbd, 0, out);/**/
  sprintf(dirfname,"%s%s",Dirname,fnameall);/**/
  output3h("a","crvsf3d1","crvsfh3d1",dirfname,out);/**/
  outputend(dirfname);/**/
  return 0;
}
