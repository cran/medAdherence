\name{medDTMPR}
\alias{medDTMPR}
\title{Dual Therapy Medication Possession Ratio}

\description{\code{medDTMPR} function calculates the Dual Therapy Medication Possession Ratio.\cr

\bold{D}ual \bold{T}herapy \bold{M}edication \bold{P}ossession \bold{R}atio (\bold{DTMPR}) were computed
taking the ratio of the sum of days'
supplies (devided by 2) to the intervals elapsed between date of first prescription refill and last prescription refill
plus the days' supply of last refill. \cr

Same as MPR, the ratio alone can't be combined across patients due to different
observation days (denomitor). DTMPR may exceed 100\% due to early refills and/or polypharmacy. Very commonly,
if DTMPR>100\%, it will be truncated to 100\%.
}

\usage{medDTMPR(df=data,followUpDays=NA,truncated="yes", digits=2)}

\arguments{
    \item{df}{a dataframe created by \code{preData} funtion}
    \item{followUpDays}{days of follow up}
    \item{truncated}{limit MPR to 100\% or not. "yes" is the default}
        \item{digits}{round to decimals. Default is 2}
}

\author{
Xiangyang Ye, Pharmacotherapy Outcomes Research Center, University of Utah }

\references{
Vanderpoel, DR. , Hussein, MA, et al. Adherence to a Fixed-Dose Combination of Rosiglitazone Maleate/Metformin Hydrochloride
in Subjects with Type 2 Diabetes Mellitus: A Retorspective Database Analysis \emph{Clinical Therapeutics} 2004;26:2066-2075
}

\examples{
cmos <- rxExampledt()
predt <- preRxData(df=cmos,id=ptid,rxDate=rxDay,daySupply=supplies)
medDTMPR(predt)
}

