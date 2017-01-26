library(plyr)
library(quantmod)
library(TTR)
library(ggplot2)
library(scales)
library(zoo)
library(xts)

#download data
download<-function(stock, from = "2010-01-01"){
  df<-getSymbols(stock,from=from,env=environment(),auto.assign = FALSE)
  names(df)<-c("Open","High","Low","Close","Volume","Adjusted")
  #save to local
  write.zoo(df,file=paste(stock,".csv",sep=""),sep=",",quote=FALSE)
}






