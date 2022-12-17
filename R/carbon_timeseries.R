globalVariables(c("country", "year", "value", "carbon_emission"))

#' Title
#'
#' @description this function takes in a country from the carbon_emission data set and returns a line graph of co2 emissions throughout the years
#' @param countryinp : A country of your choosing from the carbon_emission data set and has to be in quotes, to see which countries are on the list you can run "unique(carbon_emission$country)"
#'
#' @return a line graph of co2 emissions throughout the years for a specific country of the user's choice
#'
#' @examples
#' carbon_timeseries("Albania")
#'
#' @importFrom magrittr "%>%"
#' @importFrom dplyr "filter"
#' @import ggplot2
#' @importFrom stats "na.omit"
#'
#' @export

carbon_timeseries<- function(countryinp){
  country_df1 <- carbon_emission %>%
    na.omit() %>%
    filter(country == countryinp)
  country_df2 <- country_df1[!duplicated(country_df1$year), ]


  carbon_plot<-ggplot(data=country_df2, aes(x=year, y=value, group = 1)) +
    geom_line() +
    geom_point() +
    ggtitle("Carbon Emissions Time Series") +
    xlab("Year") + ylab("Carbon Emissions (thousand metric tons) ")


  total_emissions = sum(country_df2$value)

  return(list(carbon_plot, total_emissions))

}



