\name{postRxData}
\alias{postRxData}
\title{Second Data Preparation}

\description{\code{postRxData} function further prepares the data for medical adherence calculation.
}
\usage{postRxData(df=data)}

\arguments{
    \item{df}{a dataframe created by \code{preData} funtion}
      }
\author{
Xiangyang Ye, Pharmacotherapy Outcomes Research Center, University of Utah}

\examples{
data(cmos)
predt <- preRxData(df=cmos,id=ptid,rxDate=rxDay,daySupply=supplies)
postRxData(predt)
}

