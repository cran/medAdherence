
medCMA <- function(df=data,followUpDays=365) {
   n <- length(unique(df$id))
   aseq <- numeric(n)
   rxmax <- dim(df)[[1]]/n
   xx <- .C("cma",n=as.integer(n),
           rxmax=as.integer(rxmax),
           refills = as.integer(df$Supp),
           nCMA=as.integer(aseq),PACKAGE="medAdherence")
   ndt <- data.frame(unique(df$id),xx$nCMA)
   #rownames(ndt) <- NULL
   names(ndt) <- c("id","daySupplies")
   ndt$followUpDays <- followUpDays
   ndt$CMA <- round(ndt$daySupplies / ndt$followUpDays*100,1)
   return(ndt)
  }
  

  

