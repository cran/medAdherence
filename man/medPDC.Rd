\name{medPDC}
\alias{medPDC}
\title{Proportion of Days Covered}

\description{\code{medPDC} function calculates the proportion of days covered.\cr

\bold{P}roportion of \bold{D}ays \bold{C}overed (\bold{PDC}) was calculated by the nubmer of days with supply in study (no matter how
many medications were taken on the day) divided
by total number of days in study. The maximum of PDC is 100\%.
}

\usage{medPDC(df=data,followUpDays=365)}

\arguments{
    \item{df}{a dataframe created by \code{postData} funtion}
    \item{followUpDays}{days of follow up. 365 is the default, 12 month follow up}
      }

\references{
Benner JS, Glynn RJ, et al. Long-term Persisitence in Use of Statin Therapy in Elderly Patients 
\emph{the Journal of the American Medical Association} 2002;288:455-461

Hess, LM, Raebel, MA, et al. Measurement of Adherence in Pharmacy Administrative Databases: A Proposal for Statndard Definitions and
Preferred Measures \emph{The Annals of Pharmacotherapy} 2006;40:1280-1288
}

\author{
Xiangyang Ye, Pharmacotherapy Outcomes Research Center, University of Utah}

\examples{
data(cmos)
predt <- preRxData(df=cmos,id=ptid,rxDate=rxDay,daySupply=supplies)
postdt <-postRxData(predt)
medPDC(postdt)
}

