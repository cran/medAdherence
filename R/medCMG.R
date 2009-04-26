
medCMG <-
  function(df=data,followUpDays=365){
    #df$Supp <- ifelse(df$last.id==1,0,df$Supp)
    ndt <- do.call(rbind,lapply(split(df,list(df$id)),function(y) cbind(y,cumsum(y$Supp))))
    ndt2 <- ndt[ndt$last.id==1,]
    ndt2 <- ndt2[,c(-6:-2)]
    names(ndt2) <- c("id","totalSupp")
    rownames(ndt2) <-NULL
    ndt2$CMG <- round((followUpDays - ndt2$totalSupp)/followUpDays*100,1)
    ndt2$CMG <- ifelse(ndt2$CMG<0,0,ndt2$CMG)
    return(ndt2)
}



