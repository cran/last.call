\name{last.call}
\alias{last.call}

\title{
  Retrieves the last \code{n} commands executed by the interpreter.
}

\description{
  The commands are retrieved from \code{history}, are parsed and
  returned as unevaluated expressions that can be further parsed
  or introspected.
}
\usage{
last.call(n = 1)
}
\arguments{
  \item{n}{ The number of previous commands to retrieve } 
}

\details{

  \code{last.call} attempts to retrieve up to \code{n} 
  commands from the command history. It parses them and returns
  them as an unevaluated call (n=1) or expression (n>1). 'R_HISTSIZE' and
  'R_HISTFILE' can affect results. 

  \code{last.call} can also be used inside a function to see the 
  context of the function call including the variable to which the return value 
  is assigned. This is not accesible from \code{sys.call}, e.g.  Access to the
  full function calling context provides for a bit of interesting meta-
  programming.  See, for example, the \link[pragma]{pragma} package.

}

\value{
  A parsed, unevaluated expression. A call object is returned if
  n=1 or there is only one command in the history. This is also the
  default.
}

\author{
  Christopher Brown
}

\seealso{
  \code{\link[utils]{history}}, \code{\link[base]{sys.call}}. 
}

\examples{
 
  last.call( 1:3 ) 

  \dontrun{ 
    f <- function() {
      last <- last.call() 
      cat( "This function was called with,", deparse(last), ", " ) 
      cat( "so the function will be named:", as.character(last[[2]]), "\n" ) 
      cat( "--> Bet you didn't know you could do that?\n" ) 
    } 
    a <- f()
  }

}

\keyword{ utils }
