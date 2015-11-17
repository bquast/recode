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
#' survey$male <- ififelse(survey$gender, "Male", TRUE, "male", TRUE, FALSE)
#' 


ififelse <- function(data, a, x, b, y, z) {
  ifelse(data == a, x, ifelse(data == b, y, z))
}
