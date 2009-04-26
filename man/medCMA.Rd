\name{medCMA}
\alias{medCMA}
\title{Continuous measure of Medication Availability}

\description{\code{medCMA} function calculates the Continuous measure of Medication Acquisition.\cr

\bold{C}ontinuous measure of \bold{M}edication \bold{A}cquisition (\bold{CMA}) was calculated by the days' supplies of medication throughout
the study period divided by the number of days from the first dispensation date up to the patient's participation
completion (study end).
}

\usage{medCMA(df=data,followUpDays=365)}

\arguments{
    \item{df}{a dataframe created by \code{postData} funtion}
    \item{followUpDays}{days of follow up. 365 is the default, 12 month follow up}
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
medCMA(postdt)
}

