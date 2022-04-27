#' Unique ID determination in data.frame
#'
#' @description to check for unique identifiers in data.
#'
#' @param x data frame
#' @param varnames character vector of variable names.
#' @param verbose  if TRUE the function returns a message about whether the variables are a unique identifier or not.
#'
#' @import data.table
#' @export
#'
#' @return  logical value representing whether the two variables determine a unique identifier for the data
#'
unique_id <- function(x, varnames, verbose = FALSE) {

  test <- x[,..varnames]
  logical <- identical(test , unique(test))

  if (verbose == TRUE){
    ifelse(logical == TRUE, print('The variables constitute a unique identifier'),
           print('The variables do NOT constitute a unique identifier !'))
  }
  return(logical)
}
