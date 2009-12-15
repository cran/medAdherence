

medCSA <- function(df=data, digits=2) {
   n <- length(unique(df$id))
   rxmax <- dim(df)[[1]]/n
   ncsa <- rep(0,n*rxmax)
  xx <- .C("csa",n=as.integer(n),
           rxmax=as.integer(rxmax),
           rxDay = as.integer(df$rxDay),
           refills = as.integer(df$Supp),
           ncsa=as.integer(ncsa),
           ngap=as.integer(ncsa),PACKAGE="medAdherence")
  Ncsa <- data.frame(cbind(xx$ncsa,xx$ngap))
  names(Ncsa) <- c("CsaSupplies","CsaInterval")
  ndt <- cbind(df,Ncsa)
  ndt$CSA <- round(ndt$CsaSupplies/ndt$CsaInterval*100,digits)
  ndt <- ndt[,c("id","rxDay","Supp","CsaSupplies", "CsaInterval", "CSA")]
  ndt <- ndt[ndt$rxDay!=0,]
  rownames(ndt) <- NULL
  return(ndt)
  }
  

  

