#! /usr/bin/Rscript

library(last.call)

f <- function() sys.call
g <- function() last.call(1)

print( g() )


