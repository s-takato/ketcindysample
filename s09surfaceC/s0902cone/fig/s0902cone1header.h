const double XMIN=-4.620612,XMAX=5.057003;/**/
const double THETA=0.959931,PHI=1.231637;/**/
  //THETA:55.00, PHI:70.57;/**/
const int Mdv=50,Ndv=50;/**/
#define DsizeLL 5000/**/
#define DsizeL 1500/**/
#define DsizeM 500/**/
#define DsizeS 200/**/
const double Eps=0.00001, Eps1=0.01, Eps2=0.1;/**/
const char Dirname[]="/ketcindysample.git/s09surfaceC/s0902cone/fig/";/**/
double Urng[2],Vrng[2];/**/
int DrawE,DrawW,DrawS,DrawN;/**/
void rangeUV(short ch){/**/
  switch(ch){/**/
    case 1 : Urng[0]=0;Urng[1]=2;Vrng[0]=0;Vrng[1]=2.0*M_PI;break;/**/
  }/**/
}/**/
void boundary(short ch){/**/
  switch(ch){/**/
    case 1 : DrawE=1;DrawW=0;DrawS=0;DrawN=0;break;/**/
  }/**/
}/**/
void surffun(short ch,double u, double v, double p[3]){/**/
  switch(ch){/**/
    case 1 : p[0]=u*cos(v);p[1]=u*sin(v);p[2]=2.5*(2.0-u);break;/**/
  }/**/
}/**/
