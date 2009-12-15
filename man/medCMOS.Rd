\name{medCMOS}
\alias{medCMOS}
\title{Continuous Multiple interval measure of Over-Supply}

\description{\code{medCMOS} function calculates the Continuous Multiple interval measure of Over-Supply}

\details{
\bold{C}ontinuous \bold{M}ultiple interval measure of \bold{O}ver-\bold{S}upply (\bold{CMOS}) was calculated concurrently with 
CMG. The description of both calculations are as follows: \cr

From the first prescription refill to the next
prescription refill, a patient can accumulate a surplus or a deficit by either coming to pick up their medicaiton too
early (which would show up as a surplus) or too late (which is considered to be a deficit). Future deficits and surpluses
are accumulated based on existing deficits and surpluses. \cr

If a person continuously has deficits or surpluses for each
prescription refill period, the deficits or surpluses are always accumulated into accumulated deficits or surplus
categories, respectively. An old surplus can cancel out a new deficit. If the accumulated surplus is more than 
the new deficit,
the remaining surplus remains an accumulated surplus. If there is an accumulated surplus that precedes a new deficit
, but less than the new deficit, the remaining deficit goes to the accumulated gap category. \cr

At the end of the observation period, the accumulated gap is divided by the total days between the first and last
prescription to get the CMG value for each patient. Similarly,  the accumulated surplus is divided by the total
days between the first and last presciption to get the measure of surplus for each patient.
}


\usage{medCMOS(df=data,followUpDays=365, digits=2)}

\arguments{
    \item{df}{a dataframe created by \code{preData} funtion}
    \item{followUpDays}{days of follow up. 365 is the default, 12 month follow up}
    \item{digits}{round to decimals. Default is 2}
           }
\author{
Xiangyang Ye, Pharmacotherapy Outcomes Research Center, University of Utah}

\references{
Morningstar, BA, Sketris IS, et al. Variation in Pharmacy Prescription Refill Adherence Measures by Type of Oral 
Antihyperglycaemic Drug Therapy in Seniors in Nova Scotia, Canada \emph{Journal of Clinical Pharmacy 
and Therapeutics} 2002;27:213-220

Hess, LM, Raebel, MA, et al. Measurement of Adherence in Pharmacy Administrative Databases: A Proposal for Statndard Definitions and
Preferred Measures \emph{The Annals of Pharmacotherapy} 2006;40:1280-1288
}

\examples{
cmos <- rxExampledt()
predt <- preRxData(df=cmos,id=ptid,rxDate=rxDay,daySupply=supplies)
postdt <- postRxData(predt)
medCMOS(postdt)
}

