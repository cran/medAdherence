rxExampledt <-function(){
cat("1 1/1/2007 30",  "1 8/1/2007 30",
"2 1/1/2007 30",  "2 2/20/2007 30", 
"2 3/2/2007 30",  "2 5/10/2007 30",
"2 6/2/2007 30",  "2 8/15/2007 30",
"2 9/10/2007 30", "2 11/2/2007 30",
"2 12/10/2007 30","3 1/1/2007 30",
"3 1/25/2007 30", "3 3/1/2007 30",file="Examp.dat", sep="\n")
exdt <- read.table("Examp.dat")
unlink("Examp.dat")
names(exdt) <- c("ptid","rxdate", "supplies")
exdt$rxDay <- as.numeric(as.Date(exdt$rxdate, format="%m/%d/%Y"))
return(exdt)
}                         
                                
