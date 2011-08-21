# -----------------------------------------------------------------------
# FUNCTION: last.call
#   Retrieves a CALL from the history and returns an unevaluated 
#   call.
#
#   There are two uses for such abilities.  
#   - To be able to recall the previous commands, like pressing the up key
#     on the terminal.
#   - The ability to get the line that called the function.
#   
#   TODO:
#   - does not handle commands seperated by ';'
#
# -----------------------------------------------------------------------

last.call <-
function(n=1) {

 if( ! interactive() ) {
   warning( "'last.call' does not work in BATCH mode." )      
   return(NULL)
 }

 f1 <- tempfile()
 try( savehistory(f1), silent=TRUE ) 
 try( rawhist <- readLines(f1), silent=TRUE )
 unlink(f1)

 if( exists('rawhist') ) { 
   
   # LOOK BACK max(n)+ LINES UNTIL YOU HAVE n COMMANDS 
   cmds <- expression() 
   n.lines <- max(abs(n)) 
   while( length(cmds) < max(abs(n)) ) { 
      lines <- tail( rawhist, n=n.lines )
      try( cmds <- parse( text=lines ), silent=TRUE ) 
      n.lines <- n.lines + 1 
      if( n.lines > length(rawhist) ) break 
   }
   ret <- rev(cmds)[n] 
   if( length(ret) == 1 ) return(ret[[1]]) else return(ret) 

 }

 return(NULL)

}

# last.call(1)
# last.call(1:4) 

