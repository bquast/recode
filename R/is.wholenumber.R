#' Check if numbers of integer value (not type)
#' 
#' @export
#' @param x numeric object
#' @examples 
#' is.wholenumber(2)
#' is.wholenumber(0.9)
#' is.wholenumber(5)
#' is.wholenumber(-3)
#' is.wholenumber(0)
#' 
#' # use vectors
#' is.wholenumber( c(5,1.3,-2,0,-3.7,4) )
#' 

is.wholenumber <- function(x=NULL) {
  x == as.integer(x)
}