\name{preRxData}
\alias{preRxData}
\title{First Data Preparation}

\description{\code{preRxData} function prepares the data for medical adherence calculation.
}
\usage{preRxData(df=data,id=NULL,rxDate=NULL,daySupply=NULL,followUpDays=365)}

\arguments{
    \item{df}{a dataframe. Patient id (id), prescription refill date (rxDate), days supply (DaySupply) are required variables}
    \item{id}{a variable to identify patients}
    \item{rxDate}{numeric variable name. Medication dispensation date}
    \item{daySupply}{numeric varable name. Prescription days' supply}
    \item{followUpDays}{a scalar. 365 days is the default, 12 month follow up}
  }
\author{
Xiangyang Ye, Pharmacotherapy Outcomes Research Center, University of Utah}

\examples{
cmos <- rxExampledt()
preRxData(df=cmos,id=ptid,rxDate=rxDay,daySupply=supplies)
}

