#' Quick function to show data
#'
#' @param x data frame
#' @param numrows how many rows you want to display
#'
#' @return opens the Rstudio viewer with the first observations.
#' @export
#'
#' @examples
#'
#'
headview <- function(x, numrows = 100){
  x %>% utils::head(numrows) %>% View()
}


