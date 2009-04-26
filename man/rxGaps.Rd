\name{rxGaps}
\alias{rxGaps}
\title{rxGaps}

\description{\code{rxGaps} function calculate the gaps between the date of dispensation plus days supplies  
and the next dispensation date.
}

\usage{rxGaps(df=data,gap=NA)}

\arguments{
    \item{df}{a dataframe. a object that \code{rxGaps} funtion created}
    \item{gap}{how to deal with negative gap. Negative gap is kept if any scalar is previded. Otherwise, 
    negative gap is considered as '0', which is the default.}
      }
\author{
Xiangyang Ye, Pharmacotherapy Outcomes Research Center, University of Utah}

\examples{
data(cmos)
predt <- preRxData(df=cmos,id=ptid,rxDate=rxDay,daySupply=supplies)
postdt <-postRxData(predt)
rxGaps(postdt)
}

