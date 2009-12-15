\name{medCMG}
\alias{medCMG}
\title{Continuous measure of Medication Gaps}

\description{\code{medCMG} function calculates the Continuous measure of Medication Gaps. This is \bold{non-adherence rate}. The higher CMG,
the lower adherence rate.\cr

\bold{C}ontinuous measure of \bold{M}edication \bold{G}aps (\bold{CMG}) was estimated by
total number of days in treatment gaps (days for which a drug was unavailable) divided by the duration of the
time period of interest.\cr

The formula is: (Total Days in Study - Total Days' Supply)/(Total Days in Study) x 100. If numerator is negative,
it will be set to '0'.
}

\usage{medCMG(df=data,followUpDays=365, digits=2)}

\arguments{
    \item{df}{a dataframe created by \code{preData} funtion}
    \item{followUpDays}{days of total study period. 365 is the default, 12 month follow up.}
    \item{digits}{round to decimals. Default is 2}
    }
\author{
Xiangyang Ye, Pharmacotherapy Outcomes Research Center, University of Utah}

\references{
Steiner, JF and Prochazka, AV The Assessment of Refill Compliance Using Pharmacy Records: Methods, Validity, and Application
\emph{Journal of Clinical Epidemiology} 1997;50:105-116\cr

Hess, LM, Raebel, MA, et al. Measurement of Adherence in Pharmacy Administrative Databases: A Proposal for Statndard Definitions and
Preferred Measures \emph{The Annals of Pharmacotherapy} 2006;40:1280-1288
}

\examples{
cmos <- rxExampledt()
predt <- preRxData(df=cmos,id=ptid,rxDate=rxDay,daySupply=supplies)
medCMG(predt)
}

