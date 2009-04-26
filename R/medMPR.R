".First.lib" <- function(lib, pkg) {
    library.dynam("medAdherence", pkg, lib)
    if(interactive() || getOption("verbose")) # not in test scripts
	  cat(sprintf("Package %s (%s) loaded.\n",pkg,packageDescription(pkg)$Version))
    # To cite, see citation(\"%s\")\n",  pkg, packageDescription(pkg)$Version, pkg))
}

medMPR <-
  function(df=data,followUpDays=NA,truncated="yes"){
    ndt <- do.call(rbind,lapply(split(df,list(df$id)),function(y) cbind(y,cumsum(y$Supp))))
    ndt2 <- ndt[ndt$last.id==1,]
    ndt2 <- ndt2[,c(-6:-4)]
    names(ndt2) <- c("id","rxDay","lastSupp","totalSupp")
    rownames(ndt2) <-NULL
    ndt2$followUpDays <- ndt2$rxDay + ndt2$lastSupp
    if(!is.na(followUpDays)) ndt2$followUpDays <- followUpDays
    ndt2$MPR <- round(ndt2$totalSupp/ndt2$followUpDays*100,1)
    ndt2$rxDay<- NULL
    ndt2$lastSupp<-NULL
    if(truncated=="yes") ndt2$MPR<- ifelse(ndt2$MPR>100,100,ndt2$MPR)
    return(ndt2)
}


