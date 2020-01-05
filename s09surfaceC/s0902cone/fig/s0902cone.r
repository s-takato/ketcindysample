# date time=2019/12/18 10:25:47

setwd('/ketcindysample.git/s09surfaceC/s0902cone/fig')
source('/Applications/kettex/texlive/texmf-dist/scripts/ketcindy/ketlib/ketpiccurrent.r')
source('/Applications/kettex/texlive/texmf-dist/scripts/ketcindy/ketlib/ketpiccurrent_rep2e.r')
Ketinit()
cat(ThisVersion,'\n')
Fnametex='s0902cone.tex'
FnameR='s0902cone.r'
Fnameout='s0902cone.txt'
arccos=acos; arcsin=asin; arctan=atan
Acos<- function(x){acos(max(-1,min(1,x)))}
Asin<- function(x){asin(max(-1,min(1,x)))}
Atan=atan
Sqr<- function(x){if(x>=0){sqrt(x)}else{0}}
Factorial=factorial
Norm<- function(x){norm(matrix(x,nrow=1),"2")}

Setwindow(c(-4.62,5.06), c(-2.82,5.98))
TH=c(-2.25,-3.25);Assignadd('TH',TH)
FI=c(-3.23581,-3.75);Assignadd('FI',FI)
O=c(0,0);Assignadd('O',O)
Oz=c(9.677615,0);Assignadd('Oz',Oz)
X=c(-3.77214,-0.7633);Assignadd('X',X)
Xz=c(5.905475,0);Assignadd('Xz',Xz)
Y=c(1.33078,-2.16361);Assignadd('Y',Y)
Yz=c(11.008395,0);Assignadd('Yz',Yz)
Z=c(0,3.27661);Assignadd('Z',Z)
Zz=c(9.677615,4);Assignadd('Zz',Zz)
Zfix=1;Assignadd('Zfix',Zfix)
Z3d=c(0,0,4);Assignadd('Z3d',Z3d)
Yfix=1;Assignadd('Yfix',Yfix)
Y3d=c(0,4,0);Assignadd('Y3d',Y3d)
Xfix=1;Assignadd('Xfix',Xfix)
X3d=c(4,0,0);Assignadd('X3d',X3d)
Ofix=1;Assignadd('Ofix',Ofix)
O3d=c(0,0,0);Assignadd('O3d',O3d)
sgTHlTHr=Listplot(c(c(-5,-3.25),c(4,-3.25)))
sgFIlFIr=Listplot(c(c(-5,-3.75),c(4,-3.75)))
Setangle(55,70.5676)
axx3d=Spaceline(c(c(-5,0,0),c(5,0,0)))
axx2d=Projpara(axx3d)
axy3d=Spaceline(c(c(0,-5,0),c(0,5,0)))
axy2d=Projpara(axy3d)
axz3d=Spaceline(c(c(0,0,-2),c(0,0,6)))
axz2d=Projpara(axz3d)
ax3d=Xyzax3data("x=c(-5,5)","y=c(-5,5)","z=c(-2,6)")
ax2d=Projpara(ax3d)
ReadOutData("s0902cone1.txt")
sfbd2d1=Projpara(sfbd3d1)
crvsf2d1=Projpara(crvsf3d1)
sfbdh2d1=Projpara(sfbdh3d1)
crvsfh2d1=Projpara(crvsfh3d1)
PtL=list()
GrL=list()

# Windisp(GrL)

if(1==1){

Openfile('/ketcindysample.git/s09surfaceC/s0902cone/fig/s0902cone.tex','1cm','Cdy=s0902cone.cdy')
Letter(c(-4.9,-0.99),"c","$x$")
Letter(c(1.76,-2.87),"c","$y$")
Letter(c(0,5.1),"c","$z$")
Drwline(sfbd2d1)
Drwline(crvsf2d1)
Dottedline(sfbdh2d1)
Dottedline(crvsfh2d1)
Closefile("0")

}

quit()
