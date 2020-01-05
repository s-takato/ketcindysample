# date time=2019/12/18 10:18:23

setwd('/ketcindysample.git/s06animation/s0613atwood1/fig')
source('/Applications/kettex/texlive/texmf-dist/scripts/ketcindy/ketlib/ketpiccurrent.r')
source('/Applications/kettex/texlive/texmf-dist/scripts/ketcindy/ketlib/ketpiccurrent_rep2e.r')
Ketinit()
cat(ThisVersion,'\n')
Fnametex='s0613atwood1.tex'
FnameR='s0613atwood1.r'
Fnameout='s0613atwood1.txt'
arccos=acos; arcsin=asin; arctan=atan
Acos<- function(x){acos(max(-1,min(1,x)))}
Asin<- function(x){asin(max(-1,min(1,x)))}
Atan=atan
Sqr<- function(x){if(x>=0){sqrt(x)}else{0}}
Factorial=factorial
Norm<- function(x){norm(matrix(x,nrow=1),"2")}

Setscaling(1)
Setscaling(1)
Setscaling(1)
Setscaling(1)
Setwindow(c(-6,6), c(-7,2))
cr1=Circledata(c(c(0,0),1))
sg1=Listplot(c(c(0.99928,-0.03787),c(0.85509,-3.84312)))
sg2=Listplot(c(c(-1,0),c(-1,-4.15414)))
sg3=Listplot(c(c(0,0),c(0.98814,0.15353)))
part1=Partcrv(c(0.99928,-0.03787),c(-1,0),cr1)
pt1=Pointdata(list(c(0.855086,-3.843119),c(-1,-4.154141)))
arhaxx1=Listplot(c(c(5.80979,-0.0618),c(6,0),c(5.80979,0.0618),c(5.84783,0),c(5.80979,-0.0618)))
araxx1=Listplot(c(c(-6,0),c(5.84783,0)))
arhaxy1=Listplot(c(c(0.0618,1.80979),c(0,2),c(-0.0618,1.80979),c(0,1.84783),c(0.0618,1.80979)))
araxy1=Listplot(c(c(0,-7),c(0,1.84783)))
PtL=list()
GrL=list()

# Windisp(GrL)

if(1==1){

Openfile('/ketcindysample.git/s06animation/s0613atwood1/fig/s0613atwood1.tex','1cm','Cdy=s0613atwood1.cdy')
Texcom("{")
Setcolor(c(0,0,0,0.2))
Shade(list(cr1))
Texcom("}")
Drwline(cr1)
Drwline(sg1,2)
Drwline(sg2,2)
Texcom("{")
Setcolor(c(0,0,1))
Drwline(sg3,2)
Texcom("}")
Drwline(part1,2)
Setpt(8)
Texcom("{")
Setcolor(c(1,0,0))
Drwpt(list(pt1),c(1,0,0))
Texcom("}")
Setpt(1)
Letter(c(1,1.5),"e","$t=2.13$")
Texcom("{")
Setcolor(c(0,0,0))
Shade(list(arhaxx1))
Texcom("}")
Drwline(arhaxx1,0.1)
Drwline(araxx1,1)
Texcom("{")
Setcolor(c(0,0,0))
Shade(list(arhaxy1))
Texcom("}")
Drwline(arhaxy1,0.1)
Drwline(araxy1,1)
Letter(c(6,0),"e","$x$")
Letter(c(0,2),"cn","$y$")
Letter(c(0,0),"sw","O")
Closefile("0")

}

quit()
