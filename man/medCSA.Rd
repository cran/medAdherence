\name{medCSA}
\alias{medCSA}
\title{Continuous Single-interval measure of medication Availability}

\description{\code{medCSA} function calculates the Single-interval medication availability.\cr

\bold{C}ontinuous \bold{S}ingle-interval measure of medication \bold{A}vailability (\bold{CSA}) was calculated by the days' supply of a medication
divided by the number of days in the interval from the dispensation date up to,
but not include, the next dispensation date (or the study end). }

\usage{medCSA(df=data)}

\arguments{
    \item{df}{a dataframe created by \code{postData} funtion}
      }
\author{
Xiangyang Ye, Pharmacotherapy Outcomes Research Center, University of Utah}

\references{
Steiner, JG and Prochazka, AV. The Assessment of Refill Compliance Using Pharmacy Records: Methods, Validity, and Applications. 
\emph{Journal of Clinical Epidemiology} 1997;50:105-116 \cr

Hess, LM, Raebel, MA, et al. Measurement of Adherence in Pharmacy Administrative Databases: A Proposal for Statndard Definitions and
Preferred Measures \emph{The Annals of Pharmacotherapy} 2006;40:1280-1288
}

\examples{
data(cmos)
predt <- preRxData(df=cmos,id=ptid,rxDate=rxDay,daySupply=supplies)
postdt <-postRxData(predt)
medCSA(postdt)
}

