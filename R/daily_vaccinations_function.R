globalVariables(c("location", "date","daily_vaccinations", "covid_vaccinations"))
#' Daily COVID vaccination rates (Between 2020-2022)
#'@description this function takes in a country and outputs the number of daily vaccinations a country has administered from 2020-2022
#'@param X is a country/territory that a user inputs of their choice
#'
#' @return a numeric vector that is the number of daily vaccinations a country has administered from 2020-2022
#' @param X is a country/territory that a user inputs of their choice
#'
#' @importFrom magrittr "%>%"
#' @importFrom dplyr "filter"
#' @importFrom dplyr "select"
#'
#' @examples
#' daily_vaccinations_function("Algeria")
#' daily_vaccinations_function("Belgium")
#'
#' @export
#
if (!(covid_vaccination  %in% covid_vaccinations$location)){
  stop("This country does not exist in the world population dataset. Check for misspellings or run covid_vaccinations$location) to see a list of all country names.")
}

daily_vaccinations_function <- function(X){
  covid_vaccination <- covid_vaccinations %>%
    filter(location == X) %>%
    select(location, date, daily_vaccinations)

  return(covid_vaccination)
}

