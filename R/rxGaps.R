 
rxGaps <-
  function(df=data,gap=NA){
    xy <- data.frame(diff(df$rxDay + df$Supp,1))
    names(xy) <- "lag1"
    x0 <- data.frame(matrix(0,nrow=1))
    names(x0) <-names(xy)
    xy <-rbind(x0,xy)
    dt2 <- cbind(df,xy)
    dt2$lag1 <- ifelse(dt2$first.id==1,NA,dt2$lag1)
    dt2$gap <- dt2$lag1-dt2$Supp
    dt2$lag1 <- NULL
    if(is.na(gap)) dt2$gap <- ifelse(dt2$gap<0,0,dt2$gap)
    #dt2 <- dt2[!is.na(dt2$first.id),]
    rownames(dt2) <- NULL
    return(dt2)
}
