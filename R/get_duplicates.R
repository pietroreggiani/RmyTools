
#' Extract duplicate observations from data
#'
#' @param data A data.table object.
#' @param variables character vector of variable names (keys) on which you want to check duplicates.
#'
#' @import data.table
#'
#' @return A data.table object with the duplicated observations.
#' @export
#'
#' @examples
get_duplicates = function(data, variables ){
  data[ , duplicates := .N-1 , by = variables  ][duplicates >0]%>%
    setorder( -duplicates ) %>% return()
}



