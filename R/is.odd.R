#' Check if numbers are odd
#' 
#' @export
#' @param a numerical object of integer value
#' @examples 
#' is.odd(2)
#' is.odd(5)
#' is.odd(-4)
#' is.odd(0)
#' 
#' # use vectors
#' is.odd(  c(5,3,-2,0,4) )
#' 

is.odd <- function(x=NULL) {
  if(!all(is.wholenumber(x))) stop("x is not of integer value")
  x %% 2 != 0
}