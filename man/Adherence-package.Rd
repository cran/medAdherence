\name{adherence-package}
\alias{adherence-package}
\docType{package}
\title{Medication Adherence: Commonly Used Definitions
}
\description{
Adherence is defined as "the extent to which a person's behavior coincides with medical or health advice", which
is very important, for both clinical researchers and physicians, to identify the treatment effect 
of a specific medication(s).\cr

A variety of measures have been developed to calculate the medication adherence. Definitions and methods to
address adherence differ greatly in public literature. Choosing which definition should be determined by overall study goals.
This package provides the functions to calculate medication adherence based on commonly used definitions.
}
\details{
\tabular{ll}{
Package: \tab medAdherence\cr
Type: \tab Package\cr
Version: \tab 1.01\cr
Date: \tab 2009-04-26\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}
}

\author{
Xiangyang Ye,Pharmacotherapy Outcomes Research Center,University of Utah<\email{xyexye08@gmail.com}>
}
\references{
Haynes RB, Taylor DW, Sachett DL, eds. \emph{Compliance in health care}. Baltimore: John Hopkins University Press, 1979\cr

Hess, LM, Raebel, MA, et al. Measurement of Adherence in Pharmacy Administrative Databases: A Proposal for Statndard Definitions and
Preferred Measures \emph{The Annals of Pharmacotherapy} 2006;40:1280-1288
}
\keyword{ package }
\examples{
data(cmos)
predt <- preRxData(df=cmos, id=ptid, rxDate=rxDay, daySupply=supplies)
}
