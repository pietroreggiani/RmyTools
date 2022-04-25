
#' Check that a string is only letters
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
letters_only <- function(x){
  return(!grepl("[^A-Za-z]", x) )
}



