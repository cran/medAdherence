\name{rxEampledt}
\alias{rxExampledt}
\title{Sample Dataset Creation}
\description{A sample dataset with 3 patients, 4 variables,14 records will be created by this function.}
\usage{rxExampledt()}
\format{
  A data frame with 14 observations on the following 4 variables will be created.
  \describe{
    \item{\code{ptid}}{a numeric vector}
    \item{\code{rxdate}}{a character vector, prescription refill date}
    \item{\code{supplies}}{a numeric vector}
    \item{\code{rxDay}}{a numeric vector, prescription refill date}
  }
}

\examples{ 
cmos <- rxExampledt()
cmos
}
