year="2021"
tmp=getwd()
fname="indexj.html"
ans <- readline(paste(tmp,"(y/n)"))
if(ans=="y"){
  today=Sys.Date()
  dL=readLines(fname)
  for(k in 1:length(dL)){
    tmp=regexpr(year,dL[k])
    st=tmp[1]
    if(st>0){
      old=substr(dL[k],st,st+9)
      dL[k]=sub(old,today,dL[k])
      print(c(k,dL[k]))
    }
  }
  file.remove(fname)
  for(k in 1:length(dL)){
    cat(dL[k],"\n",file=fname,append=T)
  }
  unlink("fig",recursive=T)
}