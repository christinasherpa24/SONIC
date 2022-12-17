globalVariables(c("country_borders", "country_name"))
#' bordering_countries Function
#'
#' @description A function that takes in a country name in quotes ("") and returns a dataset of the countries that border it.
#'
#' @param user_country_name : A country of your choosing from the bordering_countries data set (contains all countries)
#'
#' @return a dataset of countries that border the chosen one
#'
#'
#' @importFrom magrittr "%>%"
#' @importFrom dplyr "filter"
#'
#' @examples
#'
#'bordering_countries("Albania")
#'
#'bordering_countries("China")
#'
#'
#' @export
#'

bordering_countries <- function(user_country_name){
  if (!(user_country_name %in% country_borders$country_name)){
    stop("This country does not exist in the country_borders dataset. Check for misspellings or run country_borders$country_name to see a list of all country names.")
  }
  country_borders_user <- country_borders %>%
    filter(country_name == user_country_name)
return(country_borders_user)
}


