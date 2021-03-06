\docType{data}
\name{hmda} 
\alias{hmda} 
\title{Home Mortgage Disclosure Act Data} 
\format{A data frame containing 2,379 observations on 14 variables.}
\usage{data("hmda")}

\description{Cross-section data on the Home Mortgage Disclosure Act (HMDA).}

\details{
Only includes variables used by Stock and Watson (2007), some of which had to be generated from the raw data. Also, different from the dataset in the AER package as one problematic observation has been eliminated. 
\itemize{
  \item{deny: Factor. Was the mortgage denied?}
  \item{pirat: Payments to income ratio.}    
  \item{hirat: Housing expense to income ratio.}
  \item{lvrat: Loan to value ratio.}
  \item{chist: Factor. Credit history: consumer payments.}      
  \item{mhist: Factor. Credit history: mortgage payments.}          
  \item{phist: Factor. Public bad credit record?}    
  \item{unemp: 1989 Massachusetts unemployment rate in applicant's industry.}    
  \item{selfemp: Factor. Is the individual self-employed?}  
  \item{insurance: Factor. Was the individual denied mortgage insurance?}  
  \item{condomin: Factor. Is the unit a condominium?}    
  \item{afam: Factor. Is the individual African-American?}  
  \item{single: Factor. Is the individual single?}    
  \item{hschool: Factor. Does the individual have a high-school diploma?}    
}
}




\source{
Online complements to Stock and Watson (2007). 

\url{http://wps.aw.com/aw_stock_ie_2}
}

\references{
Munnell, A. H., Tootell, G. M. B., Browne, L. E. and McEneaney, J. (1996). 
Mortgage Lending in Boston: Interpreting HMDA Data. \emph{American Economic Review}, \bold{86}, 25--53.

Stock, J. H. and Watson, M. W. (2007). \emph{Introduction to Econometrics}, 2nd ed. Boston: Addison Wesley.
}


\examples{
data("hmda")

## Stock and Watson (2007)
## Equations 11.1, 11.3, 11.7, 11.8 and 11.10, pp. 387--395
fm1 <- lm(I(as.numeric(deny) - 1) ~ pirat, data = hmda)
fm2 <- lm(I(as.numeric(deny) - 1) ~ pirat + afam, data = hmda)
fm3 <- glm(deny ~ pirat, family = binomial(link = "probit"), data = hmda)
fm4 <- glm(deny ~ pirat + afam, family = binomial(link = "probit"), data = hmda)
fm5 <- glm(deny ~ pirat + afam, family = binomial(link = "logit"), data = hmda)

## More examples can be found in:
## help("StockWatson2007")
}

\keyword{datasets}
