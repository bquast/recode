#' Extensible version of ifelse()
#' 
#' @export
#' @param x data
#' @param ... values to be replaced follow by replacement values, can be repeated
#' @param else.value in case value is not included in the replace values
#' @examples 
#' # load and view x
#' data(survey)
#' survey
#' 
#' # inpect more closely
#' table(survey)
#' 
#' # recode
#' survey$male <- ififelse(survey$gender, "Male", TRUE, "male", TRUE, else.value=FALSE)
#' 


ififelse <- function(x, ..., else.value=NULL) {
  ellipsis <- data.frame(...)
  ellipsis <- data.frame(x = unlist(ellipsis[c(TRUE,FALSE)]),
                         y = unlist(ellipsis[c(FALSE,TRUE)]) )
  out <- vector(length=length(x))
  matched <- match(x, ellipsis[,1])
  for (i in 1:length(x)) {
    if(x[i] %in% ellipsis$x) {
      out[i] <- ellipsis[matched[i],2]
    } else if(is.na(x[i])) {
      out[i] <- NA
    } else {
      out[i] <- else.value
    }
  }
  return(out)
}
