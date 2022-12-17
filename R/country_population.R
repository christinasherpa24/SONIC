globalVariables(c("country_territory", "population_2020", "population_2015", "population_2010", "population_2000", "world_population"))
#' World Population (Between 2000-2022)
#'@description this function takes in a a country/territory and returns the population of the country for the years 2000, 2010,2015 and 2022
#' @param X is a country/territory that a user inputs of their choice
#'
#' @return a numeric vector that is the population of a country/territory for the years 2000, 2010,2015 and 2022
#' @export
#'
#' @importFrom magrittr "%>%"
#' @importFrom dplyr "filter"
#' @importFrom dplyr "select"
#'
#' @examples
#' country_population("Albania")
#'
#' country_population("Algeria")
#'
#' country_population("Afghanistan")
#'
#'
#
country_population <- function(X){
  population_user <- world_population %>%
    filter(country_territory == X) %>%
    select(country_territory, population_2020, population_2015, population_2010, population_2000)

  return(population_user)
}

