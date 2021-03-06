% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{TFspecificModels}
\alias{TFspecificModels}
\title{TF specific parameters for logistic regression in sevenC}
\format{A \code{data.frame} with 868 rows and 7 columns.

  \describe{

  \item{TF}{TF name used in ChIP-seq experiment.}

  \item{file_accession}{File accession ID from ENCODE project}

  \item{term}{Model term name. See \code{\link{modelBest10Avg}} for more
  detials.}

  \item{estimate_mean}{Mean parameter estimate in 10-fold cross-validation}

  \item{estimate_median}{Median parameter estimate in 10-fold
  cross-validation}

  \item{estimate_sd}{Standard deviation of parameter estimate in 10-fold
  cross-validation}
  }}
\usage{
TFspecificModels
}
\description{
sevenC was trained on 124 TF ChIP-seq data sets from ENCODE. Specific
parameters are provided in this data set.
}
\seealso{
\code{\link{modelBest10Avg}} and \code{\link{cutoffByTF}}
}
\keyword{datasets}
