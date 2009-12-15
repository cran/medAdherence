

medMPRm <-
  function(df=data,followUpDays=NA,truncated="yes", digits=2){
    ndt <- do.call(rbind,lapply(split(df,list(df$id)),function(y) cbind(y,cumsum(y$Supp))))
    ndt2 <- ndt[ndt$last.id==1,]
    ndt2 <- ndt2[,c(-6:-4)]
    names(ndt2) <- c("id","rxDay","lastSupp","totalSupp")
    rownames(ndt2) <-NULL
    ndt2$followUpDays <- ndt2$rxDay + ndt2$lastSupp-1
    if(!is.na(followUpDays)) ndt2$followUpDays <- followUpDays
    ndt2$MPRm <- round(ndt2$totalSupp/ndt2$followUpDays*100,digits)
    ndt2$rxDay<- NULL
    ndt2$lastSupp<-NULL
    if(truncated=="yes") ndt2$MPRm<- ifelse(ndt2$MPRm>100,100,ndt2$MPRm)
    return(ndt2)
}


