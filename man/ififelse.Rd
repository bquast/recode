% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ififelse.R
\name{ififelse}
\alias{ififelse}
\title{Extensible version of ifelse()}
\usage{
ififelse(x, ..., else.value = NULL)
}
\arguments{
\item{x}{data}

\item{...}{values to be replaced follow by replacement values, can be repeated}

\item{else.value}{in case value is not included in the replace values}
}
\description{
Extensible version of ifelse()
}
\examples{
# load and view x
data(survey)
survey

# inpect more closely
table(survey)

# recode
survey$male <- ififelse(survey$gender, "Male", TRUE, "male", TRUE, else.value=FALSE)

}

