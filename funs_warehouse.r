#' ---
#' title: "Functions Warehouse"
#' author: "Pietro Reggiani"
#' date: "July 2020"
#' output: github_document
#' ---
#'
#' This file stores some small user defined functions for the project. It should be called at the beginning
#' of all scripts using the `source(funs_warehouse.r)` function.
#' The first part has random utility functions that are useful.
#' The second part has some WRDS wrappers that should end up in a package.


#' Unique ID determination in data.frame
#'
#'  @description to check for unique identifiers in data.
#'
#'  @param x data frame
#'  @param varnames character vector of variable names.
#'  @param verbose  if TRUE the function returns a message about whether the variables are a unique identifier or not.
#'
#'  @import data.table
#'
#'  @return  logical value representing whether the two variables determine a unique identifier for the data
#'
unique_id <- function(x, varnames, verbose = FALSE) {

    if (!require(data.table)){
        stop("Please install data.table package before proceeding.")
    }

    test <- x[,..varnames]
    logical <- identical(test , unique(test))

    if (verbose == TRUE){
        ifelse(logical == TRUE, print('The variables constitute a unique identifier'), print('The variables do NOT constitute a unique identifier !'))
    }
    return(logical)
}


#' Extract duplicate observations from data
#'
#' @param data A data.table object.
#' @param variables character vector of variable names (keys) on which you want to check duplicates.
#'
#' @import data.table tidyselect
#'
#' @return A data.table object with the duplicated observations.
#' @export
#'
#' @examples
get.duplicates = function(data, variables ){
    data[ , duplicates := .N-1 , by = variables  ][duplicates >0]%>%
        setorder( -duplicates ) %>% return()
}



#' Quick function to show data
#'
#'  @description
#'
#'  @param x data frame
#'  @param numrows how many rows you want to display
#'
#'
#'
headview <- function(x, numrows = 100) {
    x %>% head(numrows) %>% View()

}

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


#________________________________________________________________________________________________________#












