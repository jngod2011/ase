% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/wtest.R
\name{wald_test}
\alias{wald_test}
\title{Testing Estimated Coefficients}
\usage{
wald_test(object, testcoef = NULL, null, vcov = vcovHC, type = c("HC1",
  "const", "HC", "HC0", "HC2", "HC3", "HC4", "HC4m", "HC5"))
}
\arguments{
\item{object}{an object}

\item{testcoef}{}

\item{null}{null hypothesis being tested (default 0)}

\item{vcov}{the variance to be used (default heteroskedastic robust)}

\item{type}{type of variance estimator}
}
\value{
A list with test information
}
\description{
wald_test is a function for performing Wald test of estimated coefficients.
}
\author{
Giuseppe Ragusa
}
