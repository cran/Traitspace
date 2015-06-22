\name{spdata}
\alias{spdata}
\docType{data}
\title{
Simulated species data
}
\description{
A simulated species data to illustrat how the package works.
}

\usage{data(spdata)}
\format{
  A data frame with 150 observations on the following 5 variables.
  \describe{
    \item{\code{species}}{-- a factor with levels \code{S1} \code{S2} \code{S3} \code{S4} \code{S5} \code{S6}}
    \item{\code{t1}}{-- a numeric vector}
    \item{\code{t2}}{-- a numeric vector}
    \item{\code{env}}{-- a numeric vector}
    \item{\code{site}}{-- a factor with levels \code{A} \code{B} \code{C} \code{D} \code{E}}
  }
}

\examples{
data(spdata)
## maybe str(spdata) ; plot(spdata) ...
}
\keyword{datasets}
