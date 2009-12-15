
medCR <-
  function(df=data, digits=2){
    df$Supp <- ifelse(df$last.id==1,0,df$Supp)
    ndt <- do.call(rbind,lapply(split(df,list(df$id)),function(y) cbind(y,cumsum(y$Supp))))
    ndt2 <- ndt[ndt$last.id==1,]
    ndt2 <- ndt2[,c(-6:-2)]
    names(ndt2) <- c("id","totalSupp")
    ndt4 <- ndt[ndt$first.id==1 | ndt$last.id==1,]
    ndt4 <- ndt4[,c("id","rxDay")]
    xs <- diff(ndt4$rxDay)
    mxs <- matrix(xs,ncol=1)
    mxs <- cbind(c(1:dim(mxs)[[1]]),mxs)
    mxs <- mxs[-which(mxs[,1]%%2==0),]
    intervals <- mxs[,2]
    newdt <- cbind(ndt2,intervals)
    rownames(newdt) <-NULL
    newdt$CR <- round(newdt$totalSupp/newdt$intervals*100,digits)
    return(newdt)
}



