
preRxData <-
  function(df=data,id=NULL, rxDate=NULL,daySupply=NULL,followUpDays=365){
    id     <- deparse(substitute(id))
    rxref  <- deparse(substitute(rxDate))
    rxsup  <- deparse(substitute(daySupply))
    newdt        <- df;
    newdt$id     <- eval(substitute(newdt$id,list(id=as.name(id))))
    newdt$rxDay  <- eval(substitute(newdt$rxref,list(rxref=as.name(rxref))))
    newdt$Supp   <- eval(substitute(newdt$rxsup,list(rxsup=as.name(rxsup))))
    if(!is.numeric(newdt$rxDay)) stop("Please transform the rxDate as numeric first.")
    newdt <- newdt[,c("id","rxDay","Supp")]
    #order by id, rxDate and days supplies
    newdt <- newdt[order(newdt$id,newdt$rxDay,newdt$Supp),]
    #the first refill and last refill for each individual
    breaks <- diff(newdt$id)
    newdt$first.id <- c(1, breaks != 0)
    newdt$last.id <- c(breaks != 0, 1)
    #first rxDate
    indexdt <- newdt[newdt$first.id==1,]
    indexdt <- indexdt[,c("id","rxDay")]
    names(indexdt)[[2]] <- "firstrxDay"
    newdt <- merge(newdt,indexdt,by.x="id")
    newdt$rxDay <- newdt$rxDay - newdt$firstrxDay+1
    #refill sequence number for each individual
    seq <- data.frame(unlist(lapply(rle(newdt$id)$lengths,seq)))
    names(seq) <- "SEQ"
    newdt <- cbind(newdt,seq)
    newdt <- newdt[,c("id","rxDay","Supp","first.id","last.id","SEQ")]
    #update last supplies if beyond the study period
    newdt$Supp <- ifelse(newdt$Supp + newdt$rxDay>followUpDays, followUpDays - newdt$rxDay, newdt$Supp)
    return(newdt)
}

