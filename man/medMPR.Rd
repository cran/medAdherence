\name{medMPR}
\alias{medMPR}
\title{Medication Possession Ratio}

\description{\code{medMPR} function calculates the medication possession ratio.\cr

\bold{M}edication \bold{P}ossession \bold{R}atio (\bold{MPR}) were computed taking the ratio of the sum of days'
supplies to number of days in study (\bold{important}: the first day in study is not necessary a
prescription refill date). \cr

The ratio alone can't be combined across patients due to different
observation days (denomitor). MPR may exceed 100\% due to early refills and/or polypharmacy. Very commonly,
if MPR>100\%, it will be truncated to 100\%.
}

\usage{medMPR(df=data,followUpDays=NA,truncated="yes", digits=2)}

\arguments{
    \item{df}{a dataframe created by \code{preData} funtion}
    \item{followUpDays}{days of follow up}
    \item{truncated}{limit MPR to 100\% or not. "yes" is the default}
    \item{digits}{round to decimals. Default is 2}
}

\author{
Xiangyang Ye, Pharmacotherapy Outcomes Research Center, University of Utah }

\references{
Skaer TL, Sclar DA, et al. Effect of Pharmaceutical Formulation for Diltiazem on Health Care Expenditures fo Hypertension 
\emph{Clinical Therapeutics} 1993;15:905-911

Hess, LM, Raebel, MA, et al. Measurement of Adherence in Pharmacy Administrative Databases: A Proposal for Statndard Definitions and
Preferred Measures \emph{The Annals of Pharmacotherapy} 2006;40:1280-1288
}

\examples{
cmos <- rxExampledt()
predt <- preRxData(df=cmos,id=ptid,rxDate=rxDay,daySupply=supplies)
medMPR(predt)
}

