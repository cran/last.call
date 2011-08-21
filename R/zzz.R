.onAttach <- function( libname, pkgname ) {

  packageStartupMessage(
    "last.call-", 
    utils::installed.packages()[ pkgname , "Version"],
    " :  Copyright (c)2011 Decision Patterns\n" ,
    domain = NULL
  )

}


