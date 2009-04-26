
medPDC <- function(df=data,followUpDays=365) {
  n <- length(unique(df$id))
  rxDay <- df$rxDay
  Supp <- df$Supp
  x <- c(1:n)
  rxmax <- dim(df)[[1]]/n
  xx <- .C("pdc",n=as.integer(n),
           m=as.integer(followUpDays),
           rxmax=as.integer(rxmax),
           rxDay = as.integer(rxDay),
           refills = as.integer(Supp),
           rxs=as.integer(x),
           supplies=as.integer(x),PACKAGE="medAdherence")
  npdc <- data.frame(cbind(xx$supplies,xx$rxs))
  names(npdc) <- c("Supplies","nPDC")
  uniqid <- unique(df$id)          #unique patient id's, put in a data set
  finaldt <- data.frame(uniqid)
  names(finaldt) <- "id"
  finaldt <- cbind(finaldt,npdc)
  finaldt$PDC <- round(finaldt$nPDC/followUpDays * 100,1)
  return(finaldt)
}
