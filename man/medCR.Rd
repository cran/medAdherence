\name{medCR}
\alias{medCR}
\title{Compliance Rate}

\description{\code{medCR} function calculates the compiance rate.\cr

\bold{C}ompliance \bold{R}ate (\bold{CR}) were computed taking the ratio of the sum of days' 
supplies (excluding the last days' supply) to the elapsed intervals between
the last dispensation date and the first dispensation date. \cr

The formula is: (Total Days' Supply - Last Days' Supply)/(Last Dispensation Date - First Dispensation Date) x 100.
}

\usage{medCR(df=data)}

\arguments{
    \item{df}{a dataframe created by \code{preData} funtion}
      }
\author{
Xiangyang Ye, Pharmacotherapy Outcomes Research Center, University of Utah }

\references{
Ren XS, Kazis LE, et al. Identifying Patient and Physician Characteristics That Affect Compliance with
Antihypertensive Medications. \emph{Journal of Clinical Pharmacy and Therapeutics} 2002;27:47-56\cr

Hess, LM, Raebel, MA, et al. Measurement of Adherence in Pharmacy Administrative Databases: A Proposal for Statndard Definitions and
Preferred Measures \emph{The Annals of Pharmacotherapy} 2006;40:1280-1288
}

\examples{
data(cmos)
predt <- preRxData(df=cmos,id=ptid,rxDate=rxDay,daySupply=supplies)
medCR(predt)
}

