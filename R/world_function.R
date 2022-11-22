#' World Population (Between 2000-2022)
#'@description This function takes in a a country/territory and returns the population of the country for the years 2000, 2010,2015 and 2022
#' @param X is a country/territory that a user inputs of their choice
#'
#' @return a numeric vector that is the population of a country/territory for the years 2000, 2010,2015 and 2022.
#' @export
#'
#' @importFrom magrittr "%>%"
#' @importFrom dplyr "filter"
#' @importFrom dplyr "select"
#'
#' @examples
#' library(sonic)
#' world_function("Albania")
#'
#' world_function("Algeria")
#'
#' world_function("Afghanistan")
#'
#'
#
world_function <- function(X){
  population_user <- world_population %>%
    filter(country_territory == X) %>%
    select(country_territory, x2020_population, x2015_population, x2010_population, x2000_population)

  return(population_user)
}

