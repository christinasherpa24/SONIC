#' Title
#'
#' @description this function takes in a country from the carbon_emission data set and returns a line graph of co2 emissions throughout the years
#' @param countryinp : A country of your choosing from the carbon_emission data set and has to be in quotes, to see which countries are on the list you can run "unique(carbon_emission$country)"
#'
#' @return a line graph of co2 emissions throughout the years for a specific country of the user's choice
#'
#' @export
#'
#' @examples
#' library(SONIC)
#' # Say what your function is doing
#' carbon_timeseries("Albania")
#'
#' @importFrom magrittr "%>%"
#' @importFrom dplyr "filter"
#' @import ggplot2
#'

carbon_timeseries<- function(countryinp){
  country_df1 <- carbon_emission %>%
    filter(country == countryinp)
  country_df2 <- country_df1[!duplicated(country_df1$year), ]


  ggplot(data=country_df2, aes(x=year, y=value, group = 1)) +
    geom_line() +
    geom_point()

}



