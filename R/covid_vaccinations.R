#' Daily COVID vaccination rates (Between 2020-2022)
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
#' daily_vaccinations_function("Afghanistan")
#'
#' daily_vaccinations_function("Afghanistan")
#'
#' daily_vaccinations_function("Afghanistan")
#'
#'
#
daily_vaccinations_function <- function(X){
  covid_vaccination <- covid_vaccinations %>%
    filter(location == X) %>%
    select(location, date, daily_vaccinations)

  return(covid_vaccination)
}

