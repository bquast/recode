#' Check if numbers are even
#' 
#' @export
#' @param x a numerical object of integer value
#' @examples 
#' is.even(2)
#' is.even(5)
#' is.even(-4)
#' is.even(0)
#' 
#' # use vectors
#' is.even(  c(5,3,-2,0,4) )
#' 

is.even <- function(x=NULL) {
  if(!all(is.wholenumber(x))) stop("x is not of integer value")
  x %% 2 == 0
}