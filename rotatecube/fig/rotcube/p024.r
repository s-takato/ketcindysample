# date time=2019/3/31 10:14:31

setwd('/ketcindysample.git/rotatecube/fig/rotcube')
source('/Applications/kettex/texlive/texmf-dist/scripts/ketcindy/ketlib/ketpiccurrent.r')
Ketinit()
cat(ThisVersion,'\n')
Fnametex='p024.tex'
FnameR='p024.r'
Fnameout='p024.txt'
arccos=acos; arcsin=asin; arctan=atan
Acos<- function(x){acos(max(-1,min(1,x)))}
Asin<- function(x){asin(max(-1,min(1,x)))}
Atan=atan
Sqr<- function(x){if(x>=0){sqrt(x)}else{0}}
Factorial=factorial
Norm<- function(x){norm(matrix(x,nrow=1),"2")}

Setwindow(c(-5,5.07), c(-4,5.06))
Zz=c(10.073722,5);Assignadd('Zz',Zz)
TH=c(-0.5,-4.5);Assignadd('TH',TH)
FI=c(1.75,-5);Assignadd('FI',FI)
S=c(3.22333,-5.5);Assignadd('S',S)
O=c(0,0);Assignadd('O',O)
Oz=c(10.073722,0);Assignadd('Oz',Oz)
X=c(5,0);Assignadd('X',X)
Xz=c(15.073722,0);Assignadd('Xz',Xz)
Y=c(0,0);Assignadd('Y',Y)
Yz=c(10.073722,0);Assignadd('Yz',Yz)
Z=c(0,5);Assignadd('Z',Z)
A=c(0.57735,0.57735);Assignadd('A',A)
Az=c(10.651072,0.57735);Assignadd('Az',Az)
B=c(-0.70711,0);Assignadd('B',B)
Bz=c(9.366612,0);Assignadd('Bz',Bz)
C=c(-0.40825,0.8165);Assignadd('C',C)
Cz=c(9.665472,0.8165);Assignadd('Cz',Cz)
V82d=c(1.1547,2.30941);Assignadd('V82d',V82d)
V83d=c(1.1547,2.309412,2.309411);Assignadd('V83d',V83d)
V72d=c(-1.1547,3.15471);Assignadd('V72d',V72d)
V73d=c(-1.1547,-0.845303,3.154714);Assignadd('V73d',V73d)
V62d=c(1.1547,0.8453);Assignadd('V62d',V62d)
V63d=c(1.1547,-3.154715,0.845303);Assignadd('V63d',V63d)
V52d=c(3.4641,0);Assignadd('V52d',V52d)
V53d=c(3.4641,0,-0);Assignadd('V53d',V53d)
V42d=c(-1.1547,-0.8453);Assignadd('V42d',V42d)
V43d=c(-1.1547,3.154715,-0.845303);Assignadd('V43d',V43d)
V32d=c(-3.4641,0);Assignadd('V32d',V32d)
V33d=c(-3.4641,0,0);Assignadd('V33d',V33d)
V22d=c(-1.1547,-2.30941);Assignadd('V22d',V22d)
V23d=c(-1.1547,-2.309412,-2.309411);Assignadd('V23d',V23d)
V12d=c(1.1547,-3.15471);Assignadd('V12d',V12d)
V13d=c(1.1547,0.845303,-3.154714);Assignadd('V13d',V13d)
Cfix=1;Assignadd('Cfix',Cfix)
Bfix=1;Assignadd('Bfix',Bfix)
C3d=c(-0.408248,-0.408248,0.816497);Assignadd('C3d',C3d)
B3d=c(-0.707107,0.707107,0);Assignadd('B3d',B3d)
Afix=1;Assignadd('Afix',Afix)
A3d=c(0.57735,0.57735,0.57735);Assignadd('A3d',A3d)
Zfix=1;Assignadd('Zfix',Zfix)
Z3d=c(0,0,5);Assignadd('Z3d',Z3d)
Yfix=1;Assignadd('Yfix',Yfix)
Y3d=c(0,5,0);Assignadd('Y3d',Y3d)
Xfix=1;Assignadd('Xfix',Xfix)
X3d=c(5,0,0);Assignadd('X3d',X3d)
Ofix=1;Assignadd('Ofix',Ofix)
O3d=c(0,0,0);Assignadd('O3d',O3d)
sgTHlTHTHr=Listplot(c(c(-5,-4.5),c(4,-4.5)))
sgFIlFIFIr=Listplot(c(c(-5,-5),c(4,-5)))
Setangle(90,270)
sgSlSSr=Listplot(c(c(0,-5.5),c(6.28319,-5.5)))
ax3d=Xyzax3data("x=c(-4.5,4.5)"," =c(-0.5,0.5)","z=c(-4.5,4.5)")
ax2d=Projpara(ax3d)
V1V23d=Spaceline(c(c(1.1547,0.8453,-3.15471),c(-1.1547,-2.30941,-2.30941)))
V1V22d=Projpara(V1V23d)
V2V63d=Spaceline(c(c(-1.1547,-2.30941,-2.30941),c(1.1547,-3.15471,0.8453)))
V2V62d=Projpara(V2V63d)
V5V63d=Spaceline(c(c(3.4641,0,-0),c(1.1547,-3.15471,0.8453)))
V5V62d=Projpara(V5V63d)
V1V53d=Spaceline(c(c(1.1547,0.8453,-3.15471),c(3.4641,0,-0)))
V1V52d=Projpara(V1V53d)
V5V83d=Spaceline(c(c(3.4641,0,-0),c(1.1547,2.30941,2.30941)))
V5V82d=Projpara(V5V83d)
V4V83d=Spaceline(c(c(-1.1547,3.15471,-0.8453),c(1.1547,2.30941,2.30941)))
V4V82d=Projpara(V4V83d)
V1V43d=Spaceline(c(c(1.1547,0.8453,-3.15471),c(-1.1547,3.15471,-0.8453)))
V1V42d=Projpara(V1V43d)
V3V43d=Spaceline(c(c(-3.4641,0,0),c(-1.1547,3.15471,-0.8453)))
V3V42d=Projpara(V3V43d)
V2V33d=Spaceline(c(c(-1.1547,-2.30941,-2.30941),c(-3.4641,0,0)))
V2V32d=Projpara(V2V33d)
V3V73d=Spaceline(c(c(-3.4641,0,0),c(-1.1547,-0.8453,3.15471)))
V3V72d=Projpara(V3V73d)
V6V73d=Spaceline(c(c(1.1547,-3.15471,0.8453),c(-1.1547,-0.8453,3.15471)))
V6V72d=Projpara(V6V73d)
V7V83d=Spaceline(c(c(-1.1547,-0.8453,3.15471),c(1.1547,2.30941,2.30941)))
V7V82d=Projpara(V7V83d)
phe3d=list(V1V23d,V2V63d,V5V63d,V1V53d,V5V83d,V4V83d,V1V43d,V3V43d,V2V33d,V3V73d,V6V73d,V7V83d)
phv3d=list(V13d,V23d,V33d,V43d,V53d,V63d,V73d,V83d)
phf3d=list(c(1,2,6,5),c(1,5,8,4),c(1,4,3,2),c(2,3,7,6),c(3,4,8,7),c(5,6,7,8))
frnn13d=Spaceline(c(c(-4.5,0,0),c(-3.4641,0,0)))
frnn12d=Projpara(frnn13d)
frnn23d=Spaceline(c(c(3.4641,0,0),c(4.5,0,0)))
frnn22d=Projpara(frnn23d)
frhn33d=Spaceline(c(c(-3.4641,0,0),c(3.4641,0,0)))
frhn32d=Projpara(frhn33d)
frnn43d=Spaceline(c(c(0,-0.5,0),c(0,0.5,0)))
frnn42d=Projpara(frnn43d)
frnn53d=Spaceline(c(c(0,0,-4.5),c(0,0,-2.73206)))
frnn52d=Projpara(frnn53d)
frnn63d=Spaceline(c(c(0,0,2.53591),c(0,0,4.5)))
frnn62d=Projpara(frnn63d)
frhn73d=Spaceline(c(c(0,0,-2.73206),c(0,0,2.53591)))
frhn72d=Projpara(frhn73d)
frnn83d=Spaceline(c(c(1.1547,0.8453,-3.15471),c(-1.1547,-2.30941,-2.30941)))
frnn82d=Projpara(frnn83d)
frnn93d=Spaceline(c(c(-1.1547,-2.30941,-2.30941),c(1.1547,-3.15471,0.8453)))
frnn92d=Projpara(frnn93d)
frnn103d=Spaceline(c(c(3.4641,0,0),c(1.1547,-3.15471,0.8453)))
frnn102d=Projpara(frnn103d)
frnn113d=Spaceline(c(c(1.1547,0.8453,-3.15471),c(3.4641,0,0)))
frnn112d=Projpara(frnn113d)
frnn123d=Spaceline(c(c(3.4641,0,0),c(1.1547,2.30941,2.30941)))
frnn122d=Projpara(frnn123d)
frhn133d=Spaceline(c(c(-1.1547,3.15471,-0.8453),c(1.1547,2.30941,2.30941)))
frhn132d=Projpara(frhn133d)
frhn143d=Spaceline(c(c(1.1547,0.8453,-3.15471),c(-1.1547,3.15471,-0.8453)))
frhn142d=Projpara(frhn143d)
frhn153d=Spaceline(c(c(-3.4641,0,0),c(-1.1547,3.15471,-0.8453)))
frhn152d=Projpara(frhn153d)
frnn163d=Spaceline(c(c(-1.1547,-2.30941,-2.30941),c(-3.4641,0,0)))
frnn162d=Projpara(frnn163d)
frnn173d=Spaceline(c(c(-3.4641,0,0),c(-1.1547,-0.8453,3.15471)))
frnn172d=Projpara(frnn173d)
frnn183d=Spaceline(c(c(1.1547,-3.15471,0.8453),c(-1.1547,-0.8453,3.15471)))
frnn182d=Projpara(frnn183d)
frnn193d=Spaceline(c(c(-1.1547,-0.8453,3.15471),c(1.1547,2.30941,2.30941)))
frnn192d=Projpara(frnn193d)
PtL=list()
GrL=list()

# Windisp(GrL)

if(1==1){

Openfile('/ketcindysample.git/rotatecube/fig/rotcube/p024.tex','1cm','Cdy=rotatecube.cdy')
Letter(c(4.69,0),"c","$x$")
Letter(c(0,4.69),"c","$z$")
Drwline(frnn12d)
Drwline(frnn22d)
Drwline(frnn42d)
Drwline(frnn52d)
Drwline(frnn62d)
Drwline(frnn82d)
Drwline(frnn92d)
Drwline(frnn102d)
Drwline(frnn112d)
Drwline(frnn122d)
Drwline(frnn162d)
Drwline(frnn172d)
Drwline(frnn182d)
Drwline(frnn192d)
Closefile("0")

}

quit()
