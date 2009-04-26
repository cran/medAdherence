 
postRxData <-
  function(df=data){ #create equal refill counts for all patients
  uniqid <- unique(df$id)          #unique patient id's, put in a data set
  #finaldt <- data.frame(uniqid)
  #names(finaldt) <- "id"
  xf <- max(table(df$id))+1   #max refill number +1, counter for loop
  #each patien has same refill count, some refills are '0', meaning no refill for that record
  xn <- length(uniqid)
  reps <- rep(xf,xn)
  ids <- data.frame(rep(uniqid,reps))
  names(ids) <- "id"
  newsq <- data.frame(unlist(lapply(rle(ids$id)$lengths,seq)))
  names(newsq) <- "SEQ"
  ids <- cbind(ids,newsq)  
  nx <- merge(ids,df,by.x=c("id","SEQ"),all.x=TRUE)
  nx$rxDay <- ifelse(is.na(nx$rxDay),0,nx$rxDay)
  nx$Supp <- ifelse(is.na(nx$Supp),0,nx$Supp)        
  return(nx)
}
