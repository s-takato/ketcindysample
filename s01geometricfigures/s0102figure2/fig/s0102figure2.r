# date time=2019/9/24 10:23:23

setwd('/ketcindysample.git/s01geometricfigures/s0102figure2/fig')
source('/Applications/kettex/texlive/texmf-dist/scripts/ketcindy/ketlib/ketpiccurrent.r')
Ketinit()
cat(ThisVersion,'\n')
Fnametex='s0102figure2.tex'
FnameR='s0102figure2.r'
Fnameout='s0102figure2.txt'
arccos=acos; arcsin=asin; arctan=atan
Acos<- function(x){acos(max(-1,min(1,x)))}
Asin<- function(x){asin(max(-1,min(1,x)))}
Atan=atan
Sqr<- function(x){if(x>=0){sqrt(x)}else{0}}
Factorial=factorial
Norm<- function(x){norm(matrix(x,nrow=1),"2")}

Setwindow(c(-5,5), c(-5,5))
A=c(-2.605177,-2.158575);Assignadd('A',A)
B=c(3.324702,-2.084142);Assignadd('B',B)
C=c(1.662351,3.349513);Assignadd('C',C)
D=c(0.359763,-2.121358);Assignadd('D',D)
E=c(2.493526,0.632686);Assignadd('E',E)
F=c(0.793959,-0.297735);Assignadd('F',F)
sg1=Listplot(c(c(-2.60518,-2.15857),c(3.3247,-2.08414),c(1.66235,3.34951),c(-2.60518,-2.15857)))
sg2=Listplot(c(c(1.66235,3.34951),c(0.35976,-2.12136)))
sg3=Listplot(c(c(-2.60518,-2.15857),c(2.49353,0.63269)))
PtL=list()
GrL=list()

# Windisp(GrL)

if(1==1){

Openfile('/ketcindysample.git/s01geometricfigures/s0102figure2/fig/s0102figure2.tex','1cm','Cdy=s0102figure2.cdy')
Drwline(sg1)
Drwline(sg2)
Drwline(sg3)
Letter(c(0.79,-0.3),"n-3w5","G")
Letter(c(-2.61,-2.16),"sw","A")
Letter(c(3.32,-2.08),"se","B")
Letter(c(1.66,3.35),"cn2","C")
Letter(c(0.36,-2.12),"cs","M")
Letter(c(2.49,0.63),"ne","N")
Closefile("0")

}

quit()
