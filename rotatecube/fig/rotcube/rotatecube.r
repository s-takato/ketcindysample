setwd("/ketcindysample.git/rotatecube/fig/rotcube")##
source('/Applications/kettex/texlive/texmf-dist/scripts/ketcindy/ketlib/ketpiccurrent.r')##
Ketinit()##
Setwindow(c((-5),(5.073722)),c((-4),(5.06286)))####
arccos=acos; arcsin=asin; arctan=atan##
A3d=c(0.57735,0.57735,0.57735);Assignadd('A3d',A3d)##
Afix=1;Assignadd('Afix',Afix)##
B3d=c(-0.707107,0.707107,0);Assignadd('B3d',B3d)##
Bfix=1;Assignadd('Bfix',Bfix)##
C3d=c(-0.408248,-0.408248,0.816497);Assignadd('C3d',C3d)##
Cfix=1;Assignadd('Cfix',Cfix)##
O3d=c(0,0,0);Assignadd('O3d',O3d)##
Ofix=1;Assignadd('Ofix',Ofix)##
V12d=c(1.1547,-3.266);Assignadd('V12d',V12d)##
V13d=c(1.1547,0,-3.266);Assignadd('V13d',V13d)##
V22d=c(-1.1547,-1.633);Assignadd('V22d',V22d)##
V23d=c(-1.1547,-2.82844,-1.633);Assignadd('V23d',V23d)##
V32d=c(-3.4641,0);Assignadd('V32d',V32d)##
V33d=c(-3.4641,0,0);Assignadd('V33d',V33d)##
V42d=c(-1.1547,-1.633);Assignadd('V42d',V42d)##
V43d=c(-1.1547,2.82844,-1.633);Assignadd('V43d',V43d)##
V52d=c(3.4641,0);Assignadd('V52d',V52d)##
V53d=c(3.4641,-0,0);Assignadd('V53d',V53d)##
V62d=c(1.1547,1.633);Assignadd('V62d',V62d)##
V63d=c(1.1547,-2.82844,1.633);Assignadd('V63d',V63d)##
V72d=c(-1.1547,3.266);Assignadd('V72d',V72d)##
V73d=c(-1.1547,-0,3.266);Assignadd('V73d',V73d)##
V82d=c(1.1547,1.633);Assignadd('V82d',V82d)##
V83d=c(1.1547,2.82844,1.633);Assignadd('V83d',V83d)##
X3d=c(5,0,0);Assignadd('X3d',X3d)##
Xfix=1;Assignadd('Xfix',Xfix)##
Y3d=c(0,5,0);Assignadd('Y3d',Y3d)##
Yfix=1;Assignadd('Yfix',Yfix)##
Z3d=c(0,0,5);Assignadd('Z3d',Z3d)##
Zfix=1;Assignadd('Zfix',Zfix)##
setwd("/ketcindysample.git/rotatecube/fig/rotcube")##
size=25##
cat('',file='all.r',sep='',append=FALSE)##
for(n in Looprange(1,size)){##
  tmp=as.character(n)##
  tmp=paste('0000',tmp,sep='')##
  tmp=substring(tmp,nchar(tmp)-2,nchar(tmp))##
  fname=paste('p',tmp,'.r',sep='')##
  lines=readLines(fname)##
  if(n>1){##
    for(j in 1:length(lines)){##
      tmp=grep('source',lines[j],fixed=TRUE)##
      if(length(tmp)>0){##
        lines[j]=paste('#',lines[j],sep='')##
        lines[j+2]=paste('#',lines[j+2],sep='')##
        break##
      }##
    }##
  }##
  lines=lines[1:(length(lines)-1)]##
  tmp=paste('print(',as.character(n),')',sep='')##
  lines=c(tmp,lines)##
  for(j in Looprange(1,length(lines))){##
    cat(lines[j],file='all.r',sep='\n',append=TRUE)##
  }##
}##
source('all.r')##
cat('////',file='resultR.txt',sep='')##
quit()##
