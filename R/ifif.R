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
  out <- vector(length=length(data))
  matched <- match(data, ellipsis[,1])
  for (i in 1:length(data)) {
    if(data[i] %in% ellipsis$x) {
      out[i] <- ellipsis[matched[i],2]
    } else if(is.na(data[i])) {
      out[i] <- NA
    } else {
      out[i] <- else.value
    }
  }
  return(out)
}
