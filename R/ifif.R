#' Extensible version of ifelse()
#' 
#' @export
#' @examples 
#' # load and view data
#' data(survey)
#' survey
#' 
#' # inpect more closely
#' table(survey)
#' 
#' # recode
#' survey$male <- ififelse(survey$gender, "Male", TRUE, "male", TRUE, else.value=FALSE)
#' 


ififelse <- function(data, ..., else.value=NULL) {
  ellipsis <- data.frame(...)
  ellipsis <- data.frame(x = unlist(ellipsis[c(TRUE,FALSE)]),
                         y = unlist(ellipsis[c(FALSE,TRUE)]) )
  out <- rep(else.value, length(data))
  matched <- match(survey$gender, ellipsis[,1])
  for (i in 1:dim(ellipsis)[1]) {
    out[matched==i] <- ellipsis[i,2]
  }
  return(out)
}
