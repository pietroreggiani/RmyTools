
#' Check that string is only numbers
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
numbers_only <- function(x){
  return(!grepl("\\D", x))
}


