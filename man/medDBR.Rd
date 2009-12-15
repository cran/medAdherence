\name{medDBR}
\alias{medDBR}
\title{Days Between Refills adherence rate}

\description{\code{medDBR} function calculates the Days Between Reills adherence rate.\cr

\bold{D}ays \bold{B}etween \bold{R}efills (\bold{DBR}) adherence rate was estimated by comparing patients' monthly pharmacy refill
records to the prescribed regimen documented in their medical records. An assumption was made that any extra
doses accumulated during the study period were used as needed by the patients in order to adhere to the prescribed therapy
if medication refills were not obtained on time.\cr

The formula is: Adherence Rate = (1-(Days Between Refills - Total Days' Supply)/(Days Between Refills)) x 100.
}

\usage{medDBR(df=data,followUpDays=NA, digits=2)}

\arguments{
    \item{df}{a dataframe created by \code{preData} funtion}
    \item{followUpDays}{days of follow up. If no follow up days provided, the elapsed interval from the first dispensation
    date to last dispensation date will be used.}
    \item{digits}{round to decimals. Default is 2}
          }
\author{
Xiangyang Ye, Pharmacotherapy Outcomes Research Center, University of Utah}

\references{
Chisholm MA, Molly LL, et al. Comparing Renal Transplant Patients' Adherence to Free Cyclosporine and Free 
Tacrolimus Immunosuppressant Therapy. 
\emph{Clinical Transplant} 2005;19:77-82\cr

Hess, LM, Raebel, MA, et al. Measurement of Adherence in Pharmacy Administrative Databases: A Proposal for Statndard Definitions and
Preferred Measures \emph{The Annals of Pharmacotherapy} 2006;40:1280-1288
}

\examples{
cmos <- rxExampledt()
predt <- preRxData(df=cmos,id=ptid,rxDate=rxDay,daySupply=supplies)
medDBR(predt)
}

