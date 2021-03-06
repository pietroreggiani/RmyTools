% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/unique_id.R
\name{unique_id}
\alias{unique_id}
\title{Unique ID determination in data.frame}
\usage{
unique_id(x, varnames, verbose = FALSE)
}
\arguments{
\item{x}{data frame}

\item{varnames}{character vector of variable names.}

\item{verbose}{if TRUE the function returns a message about whether the variables are a unique identifier or not.}
}
\value{
logical value representing whether the two variables determine a unique identifier for the data
}
\description{
to check for unique identifiers in data.
}
