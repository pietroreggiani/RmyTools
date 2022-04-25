

#' Quick function to show data
#'
#'  @description Shows in Rstudio only the top portion of a dataset.
#'
#'  @param x data frame
#'  @param numrows how many rows you want to display
#'
#'  @export
#'
#'
headview <- function(x, numrows = 100) {
  x %>% utils::head(numrows) %>% View()

}


