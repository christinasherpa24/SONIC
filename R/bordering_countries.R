library(tidyverse)
library(reprex)
#' bordering_countries Function
#'
#' @description A function that takes in a country name in quotes ("") and prints a list of the countries that border it.
#'
#' @param user_country_name : A country of your choosing from the bordering_countries data set (contains all countries)
#'
#' @return a list of countries that border user_country_name
#'
#'
#' @importFrom magrittr "%>%"
#' @importFrom dplyr "filter"
#'
#' @examples
#'
#'library(genworld)
#'bordering_countries("Albania")
#'
#'library(genworld)
#'bordering_countries("China")
#'
#'
#' @export
#'
bordering_countries <- function(user_country_name){
  country_borders_user <- country_borders %>%
    filter(country_name == user_country_name)
  bordering_countries_list <- list()

  output <- c(user_country_name,"is bordered by:", "\n")
  cat(output)
  for (i in  country_borders_user$country_border_name){
    new_element <- (i)
    bordering_countries_list[[length(bordering_countries_list) + 1]] <- new_element
  }
  for (i in bordering_countries_list){
    cat(i, "\n")
  }
}

