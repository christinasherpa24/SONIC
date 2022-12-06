#' countries_lgbt_acceptance Function
#'
#'@description A function that takes in a country name in quotes ("") and returns The Global Acceptance Index (GAI) which measures levels of acceptance toward LGBT people and issues.
#' @param user_country_name : A country of your choosing from the lgbtq_acceptance data set
#'
#' @return The GAI index for user_country_name
#'
#' @importFrom magrittr "%>%"
#' @importFrom dplyr "filter"
#'
#' @examples
#' countries_lgbt_acceptance("France")
#' countries_lgbt_acceptance("Albania")
#'
#'
#' @export


countries_lgbt_acceptance <- function(user_country_name){
  lgbtq_acceptance <- lgbtq_acceptance %>%
    filter(country_name == user_country_name)
  return(lgbtq_acceptance)
}

