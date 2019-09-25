# date time=2019/9/24 10:25:19

setwd('/ketcindysample.git/s04bezier/s0402ospline/fig')
source('/Applications/kettex/texlive/texmf-dist/scripts/ketcindy/ketlib/ketpiccurrent.r')
Ketinit()
cat(ThisVersion,'\n')
Fnametex='Ospline.tex'
FnameR='Ospline.r'
Fnameout='Ospline.txt'
arccos=acos; arcsin=asin; arctan=atan
Acos<- function(x){acos(max(-1,min(1,x)))}
Asin<- function(x){asin(max(-1,min(1,x)))}
Atan=atan
Sqr<- function(x){if(x>=0){sqrt(x)}else{0}}
Factorial=factorial
Norm<- function(x){norm(matrix(x,nrow=1),"2")}

Setwindow(c(-5,5), c(-5,5))
A=c(-3.966405,-4.247711);Assignadd('A',A)
B=c(-2.956052,2.637262);Assignadd('B',B)
C=c(0.463694,0.463694);Assignadd('C',C)
D=c(2.231529,3.85446);Assignadd('D',D)
P=c(0.10096,0.49);Assignadd('P',P)
bzo1=Bezier(list(c(-3.9664,-4.24771),c(-2.95605,2.63726),c(0.46369,0.46369),c(2.23153,3.85446)),list(c(c(-3.99268,1.53481)),c(c(-1.91942,3.73971),c(-0.75018,0.17887)),c(c(1.67757,0.74851))))
ln1=Lineplot(c(P,c(1.10096,0.18076)))
axx1=Listplot(c(c(-5,0),c(5,0)))
axy1=Listplot(c(c(0,-5),c(0,5)))
PtL=list()
GrL=list()

# Windisp(GrL)

if(1==1){

Openfile('/ketcindysample.git/s04bezier/s0402ospline/fig/Ospline.tex','1cm','Cdy=Ospline.cdy')
Drwline(bzo1)
Drwline(ln1)
Drwline(axx1)
Drwline(axy1)
Letter(c(5,0),"e","$x$")
Letter(c(0,5),"cn","$y$")
Letter(c(0,0),"sw","O")
Closefile("0")

}

quit()
