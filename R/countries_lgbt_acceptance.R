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
# library(ggplot2)
#
# ggplot(lgbtq_acceptance, aes(country_name, gai))+
#   geom_point()
#
# lgbtq_acceptance

# ggplot(output_table, aes(param_choice, total_emissions))+
#   geom_line()+
#   geom_point(data=df, aes(x=param_choice, y=total_emissions), size = 5, colour="#0054A4")+
#   labs(title="Comparison of parameter levels for transit_dist_pct_change", subtitle="", x="Parameter Level", y="CO2 emission (in tonnes)")
