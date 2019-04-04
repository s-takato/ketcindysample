# To make html
#    20190404

thisfile <- function(){
  str <- readline("File ")
  if(nchar(str)>0){
    tmp=grep(".",str,fixed=T)
    if(length(tmp)==0){
      str=paste(str,".html",sep="")
    }
  }else{
    str=""
  }
  cat("File=",str,"\n",sep="")
  str
}

thismaintitle <- function(){
  str <- readline("Main Title ")
  if(nchar(str)==0){
    str="Main Title"
  }
  cat("Main Title=",str,"\n",sep="")
  str
}

thistitle <- function(){
  str <- readline("Title ")
  if(nchar(str)==0){
    str="Title"
  }
  cat("Title=",str,"\n",sep="")
  str
}

thispath <- function(){
  str <- readline("Path ")
  if(nchar(str)>0){
    if(substring(str,nchar(str))!="/"){
      str=paste(str,"/",sep="")
    }
  }
  cat("Path=",str,"\n",sep="")
  str
}

thisimage <- function(){
  str=""
  while(nchar(str)==0){
    str=readline("Image ")
  }
  tmp=strsplit(str,".",fixed=T)
  tmp=tmp[[1]][2]
  name=toupper(tmp)
  cat("Image=",str,"\n",sep="")
  c(str,name)
}

thisitem <- function(){
  str=""
  while(nchar(str)==0){
    str=readline("Item File ")
  }
  tmp=strsplit(str,".",fixed=T)
  tmp=tmp[[1]]
  if(length(tmp)>1){
    name=tmp[2]
  }else{
    name=""
  }
  c(str,name)
}

wfile=thisfile()
maintitle=thismaintitle()

cat("<html>\n",file=wfile,append=F)
cat("<head>\n",file=wfile,append=T)
cat("<title>",maintitle,"</title>\n",file=wfile,sep="",append=T)
cat("</head>\n",file=wfile,append=T)
cat("<body>\n",file=wfile,append=T)
cat('<p><font size="10">&emsp;',maintitle,'</font>\n',file=wfile,sep='',append=T)
tmp=system("date", intern=TRUE)
tmp=gsub(" ","0",substring(tmp,1,11),fixed=T)
tmp=gsub("年","/",tmp,fixed=T)
tmp=gsub("月","/",tmp,fixed=T)
tmp=gsub("日","",tmp,fixed=T)
cat('<font size="5">&emsp;&emsp;',tmp,"</font></p>\n",file=wfile,sep="",append=T)
cat("\n",file=wfile,append=T)

cmdL=c()
str=""
while(str!="end"){
  title=thistitle()
  path=thispath()
  cmdL=c(paste("<!-- ",title," -->",sep=""))
  cmdL=c(cmdL,'<table border="1" height="30">')
  tmp='    <tr><th colspan="2" align="left"><font size="5">&emsp;'
  tmp=paste(tmp,title,'</font></th></tr>',sep="")
  cmdL=c(cmdL,tmp)
  image=thisimage()
  tmp='    <tr><td rowspan="20"><img src="'
  tmp=paste(tmp,path,image[1],'" alt=',image[2],' width="240"></td></tr>',sep="")
  cmdL=c(cmdL,tmp)
  head='    <tr><td align="center" width="80"><a href="'
  tail='</a></td></tr>'
  while((str!="end")&&(str!="next")){
    str=thisitem()
    name=str[[2]]
    str=str[[1]]
    cat("File=",str,",Name=",name,"\n",sep="")
    if(nchar(name)>0){
      tmp=paste(head,path,str,'">',name,tail,sep="")
      cmdL=c(cmdL,tmp)
    }
  }
  tmp=paste('    <tr><td align="center" width="80"></td></tr>',sep="")
  cmdL=c(cmdL,tmp)
  tmp=paste("</table></br>",sep="")
  cmdL=c(cmdL,tmp)
  for(cmd in cmdL){
    cat(cmd,file=wfile,append=T)
    cat('\n',file=wfile,append=T)
  }
  cat("\n",file=wfile,append=T)
  if(str=="next"){str=""}
}
cat("</body>\n",file=wfile,append=T)
cat("</html>\n",file=wfile,append=T)
