\name{medMPRm}
\alias{medMPRm}
\title{Medication Possession Ratio(modified)}

\description{\code{medMPRm} function calculates the medication possession ratio,modified.\cr

\bold{M}edication \bold{P}ossession \bold{R}atio, \bold{m}odified (\bold{MPRm}) were computed taking the ratio of the sum of days'
supplies to the intervals elapsed between date of first prescription refill and last prescription refill
plus the days' supply of last refill. \cr

Same as MPR, the ratio alone can't be combined across patients due to different
observation days (denomitor). MPRm may exceed 100\% due to early refills and/or polypharmacy. Very commonly,
if MPRm>100\%, it will be truncated to 100\%.
}

\usage{medMPRm(df=data, followUpDays=NA,truncated="yes")}

\arguments{
    \item{df}{a dataframe created by \code{preData} funtion}
    \item{followUpDays}{days of follow up}
    \item{truncated}{limit MPR to 100\% or not. "yes" is the default}
}

\author{
Xiangyang Ye, Pharmacotherapy Outcomes Research Center, University of Utah }

\references{
Vanderpoel, DR. , Hussein, MA, et al. Adherence to a Fixed-Dose Combination of Rosiglitazone Maleate/Metformin Hydrochloride
in Subjects with Type 2 Diabetes Mellitus: A Retorspective Database Analysis \emph{Clinical Therapeutics} 2004;26:2066-2075

Hess, LM, Raebel, MA, et al. Measurement of Adherence in Pharmacy Administrative Databases: A Proposal for Statndard Definitions and
Preferred Measures \emph{The Annals of Pharmacotherapy} 2006;40:1280-1288
}

\examples{
data(cmos)
predt <- preRxData(df=cmos,id=ptid,rxDate=rxDay,daySupply=supplies)
medMPRm(predt)
}

