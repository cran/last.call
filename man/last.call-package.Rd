\name{last.call-package}
\alias{last.call-package}
\docType{package}
\title{
  Returns that one or more of the last commands as unevaluated
  calls.
}

\description{
  Returns one or more commands from the history as unevaluated
  expressions.
}
\details{
\tabular{ll}{
Package: \tab last.call\cr
Type: \tab Package\cr
Version: \tab 0.1.3\cr
Date: \tab 2011-08-21\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}
The packages has one function, \code{last.call}, that will return
the previous history of calls.  
}
\author{
Christopher Brown

Maintainer: Christopher Brown <chris.bronw -at- decisionpatterns.com>
}

\section{warnings}{
  At present \code{last.call} does not work in BATCH mode, including 
  the use of Rscript.
}

\keyword{ package }
\seealso{
  \code{\link{last.call}}
  \code{\link[utils]{history}} 
}

\examples{

  # See ?last.call 

}
