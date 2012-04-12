

medCMOS <-
  function(df=data, followUpDays=365, digits=2){
    x <- rxGaps(df,gap=-1)
    n <- length(unique(x$id))
    rxmax <- nrow(x)/n
    x$surplus <- ifelse(x$gap<0,-x$gap,0)
    x$deficit <- ifelse(x$gap>0,-x$gap,0)
    x <- x[,c("id","surplus","deficit")]
    x$surplus <- ifelse(is.na(x$surplus),0,x$surplus)
    x$deficit <- ifelse(is.na(x$deficit),0,x$deficit)
    ss <- .C("cmos",
            surplus = as.integer(x$surplus),
            deficit = as.integer(x$deficit),
            n = as.integer(n),
            rxmax = as.integer(rxmax),
            surp=as.integer(rep(0,n)),
            defic=as.integer(rep(0,n)),
            PACKAGE="medAdherence")
    surplus <- data.frame(cbind(unique(x$id),ss$surp,ss$defic))
    names(surplus) <- c("id","surplus", "deficit")
    surplus$surplusPCT = round(surplus$surplus/followUpDays *100,digits)
    surplus$deficitPCT = -round(surplus$deficit/followUpDays *100,digits)
    return(surplus)
 }


